import 'package:flutter/material.dart';
import 'package:flutter_learn_example/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          // centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.black,
        ),
        iconTheme: const IconThemeData(color: Colors.black, size: 30),
        textTheme: const TextTheme(
          headline6:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
