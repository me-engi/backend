// controllers/user_controller.dart
import 'package:get/get.dart';
import 'package:ghumeyho/model/user_model.dart';
// Import the UserModel

class UserController extends GetxController {
  UserModel? _loggedInUser; // Store the logged-in user

  UserModel? get loggedInUser => _loggedInUser; // Getter for logged-in user

  bool get isLoggedIn => _loggedInUser != null; // Check if user is logged in

  bool get isAdmin {
    // Implement logic to check if the logged-in user is an admin
    // Return true if the user is an admin, otherwise return false
    return _loggedInUser?.isAdmin ?? false;
  }

  // Method to log in the user
  void login(UserModel user) {
    _loggedInUser = user;
    // You might want to perform additional tasks when the user logs in
  }

  // Method to log out the user
  void logout() {
    _loggedInUser = null;
    // You might want to perform additional tasks when the user logs out
  }
}
