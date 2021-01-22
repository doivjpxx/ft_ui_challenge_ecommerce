import 'package:flutter/material.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_1/ecommerce_1.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_10/ecommerce_10.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_11/ecommerce_11.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_2/ecommerce_2.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_3/ecommerce_3.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_4/ecommerce_4.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_5/ecommerce_5.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_6/ecommerce_6.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_7/ecommerce_7.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_8/ecommerce_8.dart';
import 'package:ft_ui_challenge_ecommerce/pages/ecommerce_9/ecommerce_9.dart';

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
        '/five': (context) => MyEcommerce5(),
        '/six': (context) => MyEcommerce6(),
        '/seven': (context) => MyEcommerce7(),
        '/eight': (context) => MyEcommerce8(),
        '/nine': (context) => MyEcommerce9(),
        '/ten': (context) => MyEcommerce10(),
        '/eleven': (context) => MyEcommerce11(),
      },
    );
  }
}
