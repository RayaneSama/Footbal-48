class User {
  int userId;
  String name;
  String email;
  String token;
  String renewalToken;

  User(
      {required this.userId,
      required this.name,
      required this.email,
      required this.token,
      required this.renewalToken});

  factory User.fromJson(Map<String, dynamic> responseData) {
    return User(
        userId: responseData['id'],
        name: responseData['name'],
        email: responseData['email'],
        token: responseData['access_token'],
        renewalToken: responseData['renewal_token']);
  }
}
