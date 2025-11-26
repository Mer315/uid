import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),   // ✔ original template unchanged
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("2(b) Layouts")),   // ✔ original template unchanged

      // ✔ ADDITIONS start here
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // ROW TITLE + DEMO
          Text("ROW Example", style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              box(Colors.red),
              box(Colors.green),
              box(Colors.blue),
            ],
          ),

          SizedBox(height: 30),

          // COLUMN TITLE + DEMO
          Text("COLUMN Example", style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),

          Column(
            children: [
              box(Colors.orange),
              SizedBox(height: 10),
              box(Colors.purple),
            ],
          ),

          SizedBox(height: 30),

          // STACK TITLE + DEMO
          Text("STACK Example", style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),

          Stack(
            alignment: Alignment.center,
            children: [
              box2(Colors.teal),
              Text("Stack"),
            ],
          ),
        ],
      ),
      // ✔ ADDITIONS end here
    );
  }

  // ✔ ADDED helper widgets for cleaner code
  Widget box(Color c) =>
      Container(height: 40, width: 40, color: c);

  Widget box2(Color c) =>
      Container(height: 100, width: 100, color: c);
}
