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

  late AnimationController c;        // ✔ controller
  late Animation<Offset> slide;      // ✔ slide animation

  @override
  void initState() {
    super.initState();

    c = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..repeat(reverse: true);         // ✔ recurring slide

    // ✔ simple left ↔ right slide
    slide = Tween<Offset>(
      begin: Offset(-0.5, 0),        // start left
      end: Offset(0.5, 0),           // end right
    ).animate(c);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("8(b) Slide Animation")),

      body: Center(
        child: SlideTransition(
          position: slide,            // ✔ animate position
          child: Text(
            "Sliding...",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
