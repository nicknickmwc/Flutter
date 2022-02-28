import 'package:flutter/material.dart';

class firstPage extends StatelessWidget {
  const firstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('AdminBot'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed:(){
            Navigator.pushNamed(context, '/userInit');
          }, child: Text('Внести данные')),
          ElevatedButton(onPressed:(){
            Navigator.pushNamed(context, '/serverBot');
          }, child: Text('Запустить сервер')),
        ],
      )
    );
  }
}