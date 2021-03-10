import 'package:flutter/material.dart';
import 'package:jsonn_serialize/screens/home_screen.dart';
import 'package:jsonn_serialize/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      routes: {
        "/": (context)=> SplashScreen(),
        "/Home": (context)=> HomeScreen(),
      },
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
