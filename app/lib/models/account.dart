class Account {
  final String _id;
  String _username;
  String _displayname;
  String _bio;
  String _email;
  bool _certified;
  bool _admin;
  bool _private;
  String _joined;
  List<dynamic> _followers;
  List<dynamic> _following;

  Account(
      this._id,
      this._username,
      this._displayname,
      this._bio,
      this._email,
      this._certified,
      this._admin,
      this._private,
      this._joined,
      this._followers,
      this._following);

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      json['_id'],
      json['username'],
      json['displayname'],
      json['bio'],
      json['email'],
      json['certified'],
      json['admin'],
      json['private'],
      json['joined'],
      json['followers'],
      json['following'],
    );
  }

  List<dynamic> get following => _following;

  set following(List<dynamic> value) {
    _following = value;
  }

  List<dynamic> get followers => _followers;

  set followers(List<dynamic> value) {
    _followers = value;
  }

  String get joined => _joined;

  set joined(String value) {
    _joined = value;
  }

  bool get private => _private;

  set private(bool value) {
    _private = value;
  }

  bool get admin => _admin;

  set admin(bool value) {
    _admin = value;
  }

  bool get certified => _certified;

  set certified(bool value) {
    _certified = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get bio => _bio;

  set bio(String value) {
    _bio = value;
  }

  String get displayname => _displayname;

  set displayname(String value) {
    _displayname = value;
  }

  String get username => _username;

  set username(String value) {
    _username = value;
  }

  String get id => _id;

}
