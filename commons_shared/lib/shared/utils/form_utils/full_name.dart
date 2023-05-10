import 'package:formz/formz.dart';

/// Validation errors for the [Name] [FormzInput].
enum FullNameValidationError {
  /// Generic invalid error.
  invalid
}

/// {@template name}
/// Form input for an name input.
/// {@endtemplate}
class FullName extends FormzInput<String, FullNameValidationError> {
  /// {@macro name}
  const FullName.pure() : super.pure('');

  /// {@macro name}
  const FullName.dirty([super.value = '']) : super.dirty();

  static final RegExp _nameRegExp = RegExp(
    r'^[a-zA-Z]+(([,. -][a-zA-Z ])?[a-zA-Z]*)*$',
  );

  @override
  FullNameValidationError? validator(String? value) {
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : FullNameValidationError.invalid;
  }
}