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

class HomePage extends StatefulWidget {     // ✔ FIXED: Stateful
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final GlobalKey<FormState> key = GlobalKey<FormState>();   // ✔ safe here

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("7(b) Validation")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Form(
          key: key,                        // ✔ now works fine
          child: Column(
            children: [

              TextFormField(
                decoration: InputDecoration(labelText: "Name"),
                validator: (v) => v!.isEmpty ? "Enter name" : null,
              ),

              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                validator: (v) => v!.contains("@") ? null : "Invalid email",
              ),

              TextFormField(
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
                validator: (v) => v!.length < 6 ? "Min 6 chars" : null,
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  if (key.currentState!.validate()) {
                    ScaffoldMessenger.of(c).showSnackBar(
                      SnackBar(content: Text("Valid!")),
                    );
                  }
                },
                child: Text("Submit"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
