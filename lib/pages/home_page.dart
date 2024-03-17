import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'Codepur';
    double pi = 3.14;
    bool isMale = true;
    num temp = 30.0;
    var day = "Sunday";
    const pii = 3.14;

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child:
            Container(child: Text("Welcome to $days days of flutter by $name")),
      ),
      drawer: Drawer(),
    );
  }
}
