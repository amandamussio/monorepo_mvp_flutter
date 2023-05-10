import 'package:flutter/material.dart';
import 'package:sign_up_module/src/presentation/widgets/sign_up_form_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpFormWidget()
          
    );
  }
}

