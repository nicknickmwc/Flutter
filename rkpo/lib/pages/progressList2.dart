import 'package:flutter/material.dart';
import 'package:rkpo/Student.dart';
import 'package:rkpo/ProgressPair.dart';

class progressList2 extends StatefulWidget {

  Student student;

  progressList2({Key? key, required this.student}) : super(key: key);

  getStudent() {
    return student;
  }

  @override
  State<progressList2> createState() => _progressList2State(this.student);
}

class _progressList2State extends State<progressList2> {

  Student student;

  // ProgressPair firstPair = ProgressPair.c1('Привет','Вав');
  //
  String subject = '';
  String score = '';
  String subject2 = '';
  String score2 = '';
  String subject3 = '';
  String score3 = '';

  _progressList2State(this.student);

  // @override
  // void initState() {
  //   super.initState();
  //   student.progress.add(firstPair);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Text(student.getSubjectFromPair(0)),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body:
        SafeArea(
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(flex:1,child:
                  TextFormField(
                    decoration: const  InputDecoration(
                      labelText: 'Предмет',
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onChanged: (String value) {
                      subject = value;
                    },
                  ),
                  ),
                  Expanded(flex:1,child:
                  TextFormField(
                    decoration: const  InputDecoration(
                      labelText: 'Оценка',
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onChanged: (String value) {
                      score = value;
                    },
                  )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(flex:1,child:
                  TextFormField(
                    decoration: const  InputDecoration(
                      labelText: 'Предмет',
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onChanged: (String value) {
                      subject = value;
                    },
                  ),
                  ),
                  Expanded(flex:1,child:
                  TextFormField(
                    decoration: const  InputDecoration(
                      labelText: 'Оценка',
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onChanged: (String value) {
                      score = value;
                    },
                  )
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(flex:1,child:
                  TextFormField(
                    decoration: const  InputDecoration(
                      labelText: 'Предмет',
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onChanged: (String value) {
                      subject = value;
                    },
                  ),
                  ),
                  Expanded(flex:1,child:
                  TextFormField(
                    decoration: const  InputDecoration(
                      labelText: 'Оценка',
                      contentPadding: EdgeInsets.symmetric(vertical: 20),
                    ),
                    onChanged: (String value) {
                      score = value;
                    },
                  )
                  )
                ],
              ),

            ],
          ),
        )
    );
  }
}