// models/user_model.dart

class UserModel {
  final int id;
  final String username;
  final String email;
  final String phoneNumber;
  final bool isAdmin; // Add the isAdmin field

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.isAdmin, // Initialize the isAdmin field
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      isAdmin: json['isAdmin'] ?? false, // Set isAdmin to false by default
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
        'phoneNumber': phoneNumber,
        'isAdmin': isAdmin, // Include isAdmin in the JSON serialization
      };
}

