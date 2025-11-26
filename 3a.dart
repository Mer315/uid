import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),   // original template
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {

    // ✔ ADDED for 3(a): Getting screen width/height
    final w = MediaQuery.of(c).size.width;
    final h = MediaQuery.of(c).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("3(a) Responsive UI")),  // original template

      // ✔ ADDED responsive widget
      body: Center(
        child: Container(
          width: w * 0.6,     // ✔ 60% of screen width
          height: h * 0.1,    // ✔ 10% of screen height
          color: Colors.blue,

          child: Center(
            child: Text(
              "Responsive Box\n${w.toStringAsFixed(0)} x ${h.toStringAsFixed(0)}",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
