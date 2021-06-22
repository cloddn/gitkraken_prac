class User {
  String result;
  String artistUser;
  String loginMethod;
  List<Data> data;
  List<Signaling> signaling;

  User(
      {this.result,
        this.artistUser,
        this.loginMethod,
        this.data,
        this.signaling});

  User.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    artistUser = json['artist_user'];
    loginMethod = json['login_method'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    if (json['signaling'] != null) {
      signaling = new List<Signaling>();
      json['signaling'].forEach((v) {
        signaling.add(new Signaling.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['result'] = this.result;
    data['artist_user'] = this.artistUser;
    data['login_method'] = this.loginMethod;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.signaling != null) {
      data['signaling'] = this.signaling.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String email;
  String loginMethod;
  String password;
  String username;
  String userphone;
  String userId;

  Data(
      {this.email,
        this.loginMethod,
        this.password,
        this.username,
        this.userphone,
        this.userId});

  Data.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    loginMethod = json['login_method'];
    password = json['password'];
    username = json['username'];
    userphone = json['userphone'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['login_method'] = this.loginMethod;
    data['password'] = this.password;
    data['username'] = this.username;
    data['userphone'] = this.userphone;
    data['user_id'] = this.userId;
    return data;
  }
}

class Signaling {
  String display;
  String mic;
  String cam;
  String userId;
  String media;
  String iCEcandidate;

  Signaling(
      {this.display,
        this.mic,
        this.cam,
        this.userId,
        this.media,
        this.iCEcandidate});

  Signaling.fromJson(Map<String, dynamic> json) {
    display = json['display'];
    mic = json['mic'];
    cam = json['cam'];
    userId = json['user_id'];
    media = json['media'];
    iCEcandidate = json['ICEcandidate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['display'] = this.display;
    data['mic'] = this.mic;
    data['cam'] = this.cam;
    data['user_id'] = this.userId;
    data['media'] = this.media;
    data['ICEcandidate'] = this.iCEcandidate;
    return data;
  }
}
