import 'package:flutter/material.dart';
import 'package:rkpo/Student.dart';
import 'package:rkpo/pages/progressList.dart';

class userInit extends StatefulWidget {
  const userInit({Key? key}) : super(key: key);

  @override
  State<userInit> createState() => _userInitState();
}

class _userInitState extends State<userInit> {

  String studentNumber = '';
  String group = '';
  String name = '';
  String surname = '';

  Student student = Student();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('AdminBot'),
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Column(
              children: [
                TextFormField(
                  decoration: const  InputDecoration(
                    labelText: 'Студ. номер',
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onChanged: (String value) {
                    studentNumber = value;
                  },
                )
              ],
            ),
            Column(
              children: [
                TextFormField(
                  decoration: const  InputDecoration(
                    labelText: 'Группа',
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onChanged: (String value) {
                    group = value;
                  },
                )
              ],
            ),
            Column(
              children: [
                TextFormField(
                  decoration: const  InputDecoration(
                    labelText: 'Имя',
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onChanged: (String value) {
                    name = value;
                  },
                )
              ],
            ),
            Column(
              children: [
                TextFormField(
                  decoration: const  InputDecoration(
                    labelText: 'Фамилия',
                    contentPadding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  onChanged: (String value) {
                    surname = value;
                  },
                )
              ],
            ),
            Column(
              children: [
                ElevatedButton(onPressed: (){
                  student.setUserData(studentNumber, group, name, surname);
                  _sendDataToProgressList(context, student);
                },
                    child: Text('OK'))
              ],
            )
          ],
        ),
      ),
    );
  }
  void _sendDataToProgressList(BuildContext context, Student std) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => progressList(student: std),
        ));
  }
}