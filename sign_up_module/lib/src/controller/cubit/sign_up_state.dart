part of 'sign_up_cubit.dart';

class SignUpState {


  SignUpState({
      this.fullName = const FullName.pure(),
      this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.confirmedPassword = const ConfirmedPassword.pure(),
      this.status = false,
      this.errorMessage,
    });

  final FullName fullName;
  final Email email;
  final Password password;
  final ConfirmedPassword confirmedPassword;
  final bool status;
  final String? errorMessage;

  SignUpState copyWith({
    FullName? fullName,
    Email? email,
    Password? password,
    ConfirmedPassword? confirmedPassword,
    bool? status,
    String? errorMessage,
  }) {
    return SignUpState(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmedPassword: confirmedPassword ?? this.confirmedPassword,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() {
    return 'SignUpState(fullName: $fullName, email: $email, password: $password, confirmedPassword: $confirmedPassword, status: $status, errorMessage: $errorMessage)';
  }
}



