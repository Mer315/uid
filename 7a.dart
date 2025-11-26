import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),            // original template
    );
  }
}

class HomePage extends StatelessWidget {

  // ✔ ADDED: form key + controllers
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("7(a) Form Inputs")),

      // ✔ ADDED: Form widget
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey,                 // ✔ connects form
          child: Column(
            children: [

              // ✔ input 1
              TextFormField(
                controller: name,
                decoration: InputDecoration(labelText: "Name"),
              ),

              SizedBox(height: 10),

              // ✔ input 2
              TextFormField(
                controller: email,
                decoration: InputDecoration(labelText: "Email"),
              ),

              SizedBox(height: 10),

              // ✔ input 3
              TextFormField(
                controller: pass,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // no validation here — validation is in 7(b)
                  print("Name: ${name.text}");
                  print("Email: ${email.text}");
                  print("Pass: ${pass.text}");
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
