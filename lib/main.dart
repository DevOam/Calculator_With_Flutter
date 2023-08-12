import 'package:flutter/material.dart';
import 'package:operation/operation.dart';
import 'package:operation/main.dart';
void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(),
      routes: {
        '/Calculat': (context) => operation(),
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("calcule"),
          centerTitle: true,
        ),
        drawer: Drawer(
            child: Column(
              children: [
                ListTile(
                  title: Text("calcule"),
                  leading: Icon(Icons.abc),
                  onTap: () {
                    Navigator.pushNamed(context, '/Calculat');
                  },
                )
              ],
            )),
        );
    }
}

