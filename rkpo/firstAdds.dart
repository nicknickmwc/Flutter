import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Bot Admin'),
            centerTitle: true,
          ),
          body: const Center(
            child: Text('dfd',
              style: TextStyle(
                fontSize: 24,
                color: Colors.deepOrange,
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {  },
            child: Text('ddd'),
          ),
        ),
    );
  }
}