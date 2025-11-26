import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // ✔ ADDED: global theme
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 20, color: Colors.deepPurple),
        ),
      ),

      home: HomePage(),   // original template
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("6(b) Themes & Styles")),

      // ✔ ADDED: using theme + custom style
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This text uses the theme"),     // ✔ theme applied

            SizedBox(height: 20),

            Text(
              "This uses custom style",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,             // ✔ custom style
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Text("Themed Button"),        // ✔ themed by primarySwatch
            )
          ],
        ),
      ),
    );
  }
}
