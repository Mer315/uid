import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ✔ Stateless widget example
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),     // original template
    );
  }
}

// ✔ Stateful widget example
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ✔ ADDED: simple state variable
  int count = 0;

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("5(a) Stateless & Stateful")),

      // ✔ ADDED: UI that uses setState
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count: $count", style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => setState(() => count++),   // ✔ ADDED setState
            child: Text("Increase"),
          )
        ],
      ),
    );
  }
}
