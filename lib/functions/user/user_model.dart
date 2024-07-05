class UserModel {
  final String id;
  final int role;
  final String email;
  final String username;

  UserModel({
    required this.id,
    required this.role,
    required this.email,
    required this.username,
  });

  static UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      role: json['role'],
      email: json['email'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'role': role,
      'email': email,
      'username': username,
    };
  }
}