import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ✔ ADDED: Named route table
      routes: {
        '/': (_) => HomePage(),        // ✔ default route
        '/page2': (_) => SecondPage(), // ✔ named route target
      },

      initialRoute: '/',               // ✔ ADDED
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("4(b) Named Routes")),

      // ✔ ADDED: Navigate using pushNamed
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pushNamed(c, '/page2'),
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}

// ✔ ADDED: second screen
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(child: Text("You came here using a Named Route!")),
    );
  }
}
