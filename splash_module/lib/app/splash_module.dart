import 'package:flutter_modular/flutter_modular.dart';
import 'package:splash_module/app/module/presenter/pages/splash_page.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [

  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const SplashPage()),
  ];
}

