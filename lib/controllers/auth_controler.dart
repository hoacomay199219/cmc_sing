import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  //từ phiên bản 0.18.0 của FirebaseAuth thì FirebaseUser được gọi là User
  Rx<User> _firebaseUser = Rx<User>();
  String get user => _firebaseUser.value
      ?.email; //Kiểm tra nếu _firebaseUser.value null thì không trả về email nữa mà trả về null
  @override
  void onInit() {
    super.onInit();
    _auth.authStateChanges().listen((_firebaseUser) {
      this._firebaseUser.value = _firebaseUser;
      print(_firebaseUser.email);
      if (_firebaseUser == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  void createUser(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Get.back();
    } catch (e) {
      Get.snackbar('Error create account', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Get.snackbar('Error login', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signOut() {
    try {
      _auth.signOut();
    } catch (e) {
      Get.snackbar('Error sign out', e.message,
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
