import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Test()));

class Test extends StatefulWidget {
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  final t = TextEditingController();
  String r = "";

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(controller: t),
          ElevatedButton(
            onPressed: () {
              r = t.text == "ok" ? "PASS" : "FAIL";
              print(r);
              setState(() {});
            },
            child: Text("TEST"),
          ),
          Text(r),
        ],
      ),
    );
  }
}
