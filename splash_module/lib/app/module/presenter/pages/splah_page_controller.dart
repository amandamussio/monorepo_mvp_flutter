import 'package:flutter_modular/flutter_modular.dart';


class SplashPageController {

  // Loading dependencies before start app
  load() async {


    await Future.delayed(Duration(seconds: 2));
    Modular.to.pushReplacementNamed('/home');

    
      
    

  }

}