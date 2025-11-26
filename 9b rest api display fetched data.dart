import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
));

class HomePage extends StatelessWidget {
  Future<List> load() async {
    var r = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    return jsonDecode(r.body);
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text("9(b) API UI")),

      body: FutureBuilder(
        future: load(),
        builder: (c, s) {
          if (!s.hasData) return Center(child: CircularProgressIndicator());
          var d = s.data as List;

          return ListView.builder(
            itemCount: d.length,
            itemBuilder: (_, i) => Card(
              child: ListTile(
                title: Text(d[i]["title"]),
                subtitle: Text("ID: ${d[i]["id"]}"),
              ),
            ),
          );
        },
      ),
    );
  }
}
