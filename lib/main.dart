//import 'package:flutter/material.dart';
import 'package:neumorphic_code/login.dart';
import 'home.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      routes: {
        '/login': (ctx) => LoginPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: const NeumorphicThemeData(
        baseColor: Color.fromARGB(255, 236, 240, 243),
        lightSource: LightSource.topLeft,
        shadowDarkColor: Color.fromARGB(128, 151, 167, 195),
      ),
      home: Home(),
    );
  }
}
