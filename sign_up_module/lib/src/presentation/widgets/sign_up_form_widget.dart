import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {

  SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Nome'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email'
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Senha'
                ),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Text('Entrar'),
              ),
            ],
        ),
      );
  }
}