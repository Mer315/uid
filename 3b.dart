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

    // ✔ ADDED: screen width
    final w = MediaQuery.of(c).size.width;

    // ✔ ADDED: simple breakpoints
    String layout;
    if (w < 600) layout = "MOBILE LAYOUT";
    else if (w < 1000) layout = "TABLET LAYOUT";
    else layout = "DESKTOP LAYOUT";

    return Scaffold(
      appBar: AppBar(title: Text("3(b) Breakpoints")),   // original template

      // ✔ ADDED responsive UI
      body: Center(
        child: Container(
          width: w * 0.6,
          height: 100,
          color: Colors.teal,
          child: Center(
            child: Text(
              layout,               // ✔ Shows which layout is active
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
