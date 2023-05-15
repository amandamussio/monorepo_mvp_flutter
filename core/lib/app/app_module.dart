import 'package:commons_shared/commons_shared.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sign_up_module/sign_up_module.dart';
import 'package:splash_module/app/splash_module.dart';
import 'package:commons_shared/commons_shared.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => FirebaseServices().firebaseAuth),
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: SignUpModule()),
  ];
}