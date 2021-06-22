from collections import UserList
from flumeride_server.users.serializers import Userserializer
from flumeride_server import users
import json
from channels import Group
from rest_framework.response import Response
from channels.auth import channel_session_user, channel_session_user_from_http
from users import serializers
from channels.db import database_sync_to_async

@database_sync_to_async #serializer와 연결
async def save_post(self, data):
    serializer = Userserializer(data=data)
    serializer.is_valid(raise_exception=True)
    x = serializer.create(serializer.validated_data)#this will create the post
    return Userserializer(x).data #this will return the serialized post data

def get_user(user_id):
    try:
        return users.objects.get(id=user_id)
    except users.DoesNotExist:
        return Response({"error": True})

class QueryAuthMiddleware:
    """
    Custom middleware (insecure) that takes user IDs from the query string.
    """

    def __init__(self, app):
        # Store the ASGI application we were passed
        self.app = app

    async def __call__(self, scope, receive, send):
        # Look up user from query string (you should also do things like
        # checking if it is a valid user ID, or if scope["user"] is already
        # populated).
        scope['user'] = await get_user(int(self.scope["query_string"]))

        return await self.app(scope, receive, send)

@channel_session_user_from_http
def ws_connect(message):
    Group('users').add(message.reply_channel)
    Group('users').send({
        'text': json.dumps({
            'username': message.user.username,
            'is_logged_in': True
        })
    })


@channel_session_user
def ws_disconnect(message):
    Group('users').send({
        'text': json.dumps({
            'username': message.user.username,
            'is_logged_in': False
        })
    })
    Group('users').discard(message.reply_channel)