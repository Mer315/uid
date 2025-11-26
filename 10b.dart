import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,   // ✔ debugging: remove banner
  home: DebugPage(),
));

class DebugPage extends StatefulWidget {
  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  int x = 0;

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("10(b) Debug")),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            x++;
            debugPrint("Button pressed. x = $x");   // ✔ debugging log
            setState(() {});
          },
          child: Text("Press ($x)"),
        ),
      ),
    );
  }
}
