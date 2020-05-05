
import 'package:disenos/pages/basico_page.dart';
import 'package:disenos/pages/botones.page.dart';
import 'package:disenos/pages/scroll_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      initialRoute: 'botones',
      routes: {

        'basico'   :   (BuildContext context) => BasicoPage(),
        'scroll'   :   (BuildContext context) => ScrollPage(),
        'botones'   :   (BuildContext context) => BotonesPage(),

      },
     
    );
  }
}