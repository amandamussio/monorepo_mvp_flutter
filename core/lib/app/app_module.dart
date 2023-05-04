import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_module/app/splash_module.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
  
  ];

  @override
  List<ModularRoute> get routes => [
    ModuleRoute('/', module: SplashModule()),
    // ModuleRoute('/login', module: LoginModule()),
    // ModuleRoute(Modular.initialRoute, module: HomeModule()),
  ];
}