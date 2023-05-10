import 'package:flutter_modular/flutter_modular.dart';
import 'package:sign_up_module/src/sign_up.dart';


class SignUpModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => SignUpCubit(i())),
    Bind.singleton((i) => SignUpRepositoryImp(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SignUpPage()),
  ];
}

