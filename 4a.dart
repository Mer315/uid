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
    return Scaffold(
      appBar: AppBar(title: Text("4(a) Navigation")),

      // ✔ ADDED: Button to navigate to SecondPage
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(                    // ✔ ADDED navigation
              c,
              MaterialPageRoute(builder: (_) => SecondPage()),
            );
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}

// ✔ ADDED: New page to navigate to
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(child: Text("You are on the second page!")),
    );
  }
}
