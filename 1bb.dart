import 'package:flutter/material.dart';

void main() {
  // ✔ Added for 1(a): basic Dart code
  int x = 10; 
  String msg = "Welcome to Flutter"; 
  print("Dart says: $msg and x = $x");

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("1(a) Simple Dart Demo")),
      body: Center(
        child: Text(
          "Dart printed values in console.\nCheck debug console.",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
