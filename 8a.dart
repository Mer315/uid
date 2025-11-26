import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  late AnimationController c;    // ✔ added

  @override
  void initState() {
    super.initState();
    c = AnimationController(             // ✔ controller
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);            // ✔ ADDED recurring animation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("8(a) Fade Loop")),

      body: Center(
        child: FadeTransition(
          opacity: c,                    // ✔ direct fade
          child: Text(
            "Fading...",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
