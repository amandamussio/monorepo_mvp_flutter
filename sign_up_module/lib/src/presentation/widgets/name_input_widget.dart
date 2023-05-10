import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sign_up_module/src/sign_up.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (BuildContext ontext, SignUpState state) {
        return TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nome',
                  errorText: state.fullName.isNotValid ? 'Nome inválido' : null,
                ),
                onChanged: (value) => context.read<SignUpCubit>().nameChanged(value),
        );
      },
    );
  }
}