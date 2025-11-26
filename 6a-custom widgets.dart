import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),     // original template
    );
  }
}

// ✔ ADDED: A simple custom widget
class MyBox extends StatelessWidget {
  final Color c;
  MyBox(this.c);                 // ✔ takes color as input

  @override
  Widget build(BuildContext c2) {
    return Container(
      height: 60,
      width: 60,
      color: c,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("6(a) Custom Widgets")),

      // ✔ ADDED: using the custom widget
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyBox(Colors.red),      // ✔ custom widget
          SizedBox(width: 20),
          MyBox(Colors.green),    // ✔ reused widget
          SizedBox(width: 20),
          MyBox(Colors.blue),     // ✔ reused widget
        ],
      ),
    );
  }
}
