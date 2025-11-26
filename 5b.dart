import 'package:flutter/material.dart';
import 'package:provider/provider.dart';   // ✔ ADDED

void main() {
  runApp(
    ChangeNotifierProvider(              // ✔ ADDED provider wrapper
      create: (_) => CounterModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),                   // original template
    );
  }
}

// ✔ ADDED: ChangeNotifier model
class CounterModel extends ChangeNotifier {
  int x = 0;
  void inc() {
    x++;
    notifyListeners();                    // ✔ updates UI
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext c) {

    final m = Provider.of<CounterModel>(c); // ✔ ADDED

    return Scaffold(
      appBar: AppBar(title: Text("5(b) Provider")),

      // ✔ ADDED UI using provider state
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Count: ${m.x}", style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => m.inc(),       // ✔ triggers provider update
            child: Text("Increase"),
          )
        ],
      ),
    );
  }
}
