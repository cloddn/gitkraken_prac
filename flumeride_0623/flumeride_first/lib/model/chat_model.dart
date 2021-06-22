
import 'package:flumeride_first/model/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.isLiked,
    this.unread,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/images/greg.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);
final User john = User(
  id: 3,
  name: 'John',
  imageUrl: 'assets/images/john.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  imageUrl: 'assets/images/olivia.jpg',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  imageUrl: 'assets/images/sam.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  imageUrl: 'assets/images/sophia.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  imageUrl: 'assets/images/steven.jpg',
);

// FAVORITE CONTACTS
List<User> favorites = [sam, steven, olivia, john, greg];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: james,
    time: '7:02 PM',
    text: 'ㅋㅋㅋ ㅠㅠ 떨리실듯',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: james,
    time: '7:02 PM',
    text: '저 1번이에요 ㅋㅋㅋ ㅋㅋㅋㅋㅋ ㅋㅋㅋㅋ',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:02 PM',
    text: '심장아 .. 나대지마 ... ㅠ',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '7:01 PM',
    text: '오늘 언제 끝날까요?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '7:01 PM',
    text: '아 저 맨 끝이에요 ㅠㅠ',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '7:00 PM',
    text: '하 떨려',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: james,
    time: '7:00 PM',
    text: '다들 몇번이신가요',
    isLiked: false,
    unread: true,
  ),
];
