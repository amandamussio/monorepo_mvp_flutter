import 'package:flutter_modular/flutter_modular.dart';
import 'package:sign_up_module/src/presentation/sign_up_page.dart';
import 'package:sign_up_module/src/controller/cubit/sign_up_cubit.dart';
import 'package:sign_up_module/src/data/repository/sign_up_repository.dart';

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

