import 'package:flutter/widgets.dart';

class SplashPage extends StatefulWidget {

  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
