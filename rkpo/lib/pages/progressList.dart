import 'package:flutter/material.dart';
import 'package:rkpo/Student.dart';
import 'package:rkpo/ProgressPair.dart';
import 'package:rkpo/pages/progressList2.dart';
import 'package:rkpo/pages/serverBot.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class progressList extends StatefulWidget {

  Student student;

  progressList({Key? key, required this.student}) : super(key: key);

  getStudent() {
    return student;
  }

  @override
  State<progressList> createState() => _progressListState(this.student);
}

class _progressListState extends State<progressList> {

  Student student;

  // ProgressPair firstPair = ProgressPair.c1('Привет','Вав');
  //
  String subject = '';
  String score = '';
  String subject2 = '';
  String score2 = '';
  String subject3 = '';
  String score3 = '';

  _progressListState(this.student);

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    super.initState();
    initFirebase();
    //student.progress.add(firstPair);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title:  Text(student.name),
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
                      subject2 = value;
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
                      score2 = value;
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
                      subject3 = value;
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
                      score3 = value;
                    },
                  )
                  )
                ],
              ),

              Column(
                children: [
                  ElevatedButton(onPressed: (){

                    student.setPair(subject, score);
                    student.setPair(subject2, score2);
                    student.setPair(subject3, score3);
                    //_sendDataToProgressList(context, student);

                    _sendDataToProgressList(context, student);

                    FirebaseFirestore.instance.collection('students').add({
                      'studentNumber': student.studentNumber,
                      'group': student.group,
                      'name': student.name,
                      'surname':student.surname,
                      'subject0':student.getSubjectFromPair(0),
                      'score0':student.getScoreFromPair(0),
                      'subject1':student.getSubjectFromPair(1),
                      'score1':student.getScoreFromPair(1),
                      'subject2':student.getSubjectFromPair(2),
                      'score2':student.getScoreFromPair(2),



                    });

                  },
                      child: const Icon(Icons.add_box, color: Colors.white,))
                ],
              )
            ],
          ),
        )
    );
  }
  void _sendDataToProgressList(BuildContext context, Student std) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => serverBot(student: std),
        ));
  }
}