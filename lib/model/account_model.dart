class AccountModel {
  String? id;
  String? name;
  String? username;
  double? balance;

  AccountModel({
    this.id,
    this.name,
    this.username,
    this.balance,
  });

  AccountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'username': username,
      'balance': balance,
    };
  }
}
