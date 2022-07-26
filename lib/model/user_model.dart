class UserModel {
  String? id;
  String? username;
  String? accountId;
  String? lastLoginTimestamp;
  String? sessionStatus;

  UserModel({
    this.id,
    this.username,
    this.accountId,
    this.lastLoginTimestamp,
    this.sessionStatus,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    accountId = json['accountId'];
    lastLoginTimestamp = json['lastLoginTimestamp'];
    sessionStatus = json['sessionStatus'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'accountId': accountId,
      'lastLoginTimestamp': lastLoginTimestamp,
      'sessionStatus': sessionStatus,
    };
  }
}
