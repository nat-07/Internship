import 'models/models.dart';

abstract class UserRepository{
  Stream<MyUser?> get user; 
  // Checking authentication of user
  Future<MyUser> signUp(MyUser myUser, String password);
  // Future is an object that represents a value that is not yet available but will be at some point
  // signUp method for a future user
  Future<void> setUserData(MyUser user);
  Future<void> signIn(String email, String password);
  Future<void> logOut();

  // all methods will be implemented in firebase_user_repo.dart 
}