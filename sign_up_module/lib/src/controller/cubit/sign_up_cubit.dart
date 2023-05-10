import 'package:bloc/bloc.dart';
import 'package:commons_shared/shared/utils/form_utils/email.dart';
import 'package:commons_shared/shared/utils/form_utils/full_name.dart';
import 'package:commons_shared/shared/utils/form_utils/password.dart';
import 'package:commons_shared/shared/utils/form_utils/confirmed_password.dart';
import 'package:meta/meta.dart';
import 'package:formz/formz.dart';
import 'package:sign_up_module/src/sign_up.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {

  SignUpCubit(this._signUpRepository) : super(SignUpState());

  final SignUpRepository _signUpRepository;


  void nameChanged(String value) {
    final fullName = FullName.dirty(value);
    emit(
      state.copyWith(
        fullName: fullName,
        status: Formz.validate([
          fullName,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([
          state.fullName,
          email,
          state.password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void passwordChanged(String valeu) {
    final password = Password.dirty(valeu);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([
          state.fullName,
          state.email,
          password,
          state.confirmedPassword,
        ]),
      ),
    );
  }

  void confirmedPasswordChanged(String value) {

     final confirmedPassword = ConfirmedPassword.dirty(
      password: state.password.value,
      value: value,
    );

    emit(
      state.copyWith(
        confirmedPassword: confirmedPassword,
        status: Formz.validate([
          state.fullName,
          state.email,
          state.password,
          confirmedPassword,
        ]),
      ),
    );
  }

  signUpFormSubmitted() {
      if (!state.status) return;

      // emit(state.copyWith(status: FormzSubmissionStatus.inProgress));

    // try {
    //   await _authenticationRepository.signUp(
    //     email: state.email.value,
    //     password: state.password.value,
    //   );
    //   emit(state.copyWith(status: FormzSubmissionStatus.success));
    // } on SignUpWithEmailAndPasswordFailure catch (e) {
    //   emit(
    //     state.copyWith(
    //       errorMessage: e.message,
    //       status: FormzStatus.submissionFailure,
    //     ),
    //   );
    // } catch (_) {
    //   emit(state.copyWith(status: FormzSubmissionStatus.failure));
    // }

  }
}
