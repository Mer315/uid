import 'package:flutter/material.dart';

void main() {
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
      appBar: AppBar(title: Text("1(b) Basic Widgets")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        // ✔ Added block for 1(b): Text, Image, Container
        children: [
          Text("This is a Text widget"),   // ✔ Text widget

          SizedBox(height: 20),

          Image.network(
            "https://picsum.photos/200",   // ✔ Image widget
            height: 120,
          ),

          SizedBox(height: 20),

          Container(                       // ✔ Container widget
            height: 80,
            width: 80,
            color: Colors.blue,
            child: Center(child: Text("Box", style: TextStyle(color: Colors.white))),
          ),
        ],
      ),
    );
  }
}
