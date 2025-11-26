import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,   // ✔ FIXED
      title: "Demo",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("2(a) Widgets Exploration")),

      // ✔ Added block for 2(a): Mixed widgets
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(
            "This is a Text widget",
            style: TextStyle(fontSize: 20),
          ), // ✔ Text

          SizedBox(height: 20),

          Image.network(
            "https://picsum.photos/250",
            height: 150,
            fit: BoxFit.cover,
          ), // ✔ Image

          SizedBox(height: 20),

          Container(
            height: 100,
            width: double.infinity,
            color: Colors.orange,
            child: Center(
              child: Text(
                "Container widget",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ), // ✔ Container

          SizedBox(height: 20),

          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ), // ✔ Icon

          SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {},
            child: Text("Button Widget"),
          ), // ✔ Button
        ],
      ),
    );
  }
}
