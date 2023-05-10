/// {@template sign_up_with_email_and_password_failure}
/// Thrown if during the sign up process if a failure occurs.
/// {@endtemplate}
class SignUpWithEmailAndPasswordFailure implements Exception {
  /// {@macro sign_up_with_email_and_password_failure}
  const SignUpWithEmailAndPasswordFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/createUserWithEmailAndPassword.html
  factory SignUpWithEmailAndPasswordFailure.fromCode(String code) {
    switch (code) {
      case 'invalid-email':
        return const SignUpWithEmailAndPasswordFailure(
          'Email inválido.',
        );
      case 'user-disabled':
        return const SignUpWithEmailAndPasswordFailure(
          'Este usuário foi desabilitado. Contate o suporte.',
        );
      case 'email-already-in-use':
        return const SignUpWithEmailAndPasswordFailure(
          'Este email já está em uso.',
        );
      case 'operation-not-allowed':
        return const SignUpWithEmailAndPasswordFailure(
          'Operação não permitida.',
        );
      case 'weak-password':
        return const SignUpWithEmailAndPasswordFailure(
          'Senha fraca. Tente uma senha mais forte.',
        );
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
    
  /// The associated error message.
  final String message;
}