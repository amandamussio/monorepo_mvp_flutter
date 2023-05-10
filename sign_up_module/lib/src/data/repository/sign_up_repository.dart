import 'package:sign_up_module/src/utils/firebase_sign_up_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class SignUpRepository {

 SignUpRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Future<void> _signUp({required String email, required String password});
}

class SignUpRepositoryImp extends SignUpRepository{

  SignUpRepositoryImp(FirebaseAuth firebaseAuth) : super(firebaseAuth);

  @override
  Future<void> _signUp({required String email, required String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw SignUpWithEmailAndPasswordFailure.fromCode(e.code);
    } catch (_) {
      throw const SignUpWithEmailAndPasswordFailure();
    }
  }

}