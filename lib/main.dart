import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_1/ecommerce_1.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_2/ecommerce_2.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_3/ecommerce_3.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_4/ecommerce_4.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_5/ecommerce_5.dart';

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
        '/second': (context) => MyEcommerce2(),
        '/third': (context) => MyEcommerce3(),
        '/four': (context) => MyEcommerce4(),
        '/five': (context) => MyEcommerce5()
      },
    );
  }
}
