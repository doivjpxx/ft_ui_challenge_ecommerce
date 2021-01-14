import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_1/ecommerce_1.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/first': (context) => MyEcommerce1(),
        // '/second': (context) => MyAnimation2(),
        // '/third': (context) => MyAnimation3(),
        // '/four': (context) => MyAnimation4(),
        // '/five': (context) => MyAnimation5()
      },
    );
  }
}
