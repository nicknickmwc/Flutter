import 'package:flutter/material.dart';
import 'package:rkpo/Student.dart';
import 'package:rkpo/ProgressPair.dart';
import 'package:rkpo/pages/progressList2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';

class serverBot extends StatefulWidget {

  Student student;

  serverBot({Key? key, required this.student}) : super(key: key);

  @override
  State<serverBot> createState() => _serverBotState(this.student);
}

class _serverBotState extends State<serverBot> {

  Student student;

  _serverBotState(this.student);

  List<String> t = [];


  final telegram = Telegram('5244519370:AAGdl5D88juSseFo2lu5iAC_YZqeZk2YQfs');

  void initFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initFirebase();
    teledartStart(student);
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  Future<void> teledartStart(Student t) async {





    var BOT_TOKEN = '5244519370:AAGdl5D88juSseFo2lu5iAC_YZqeZk2YQfs';
    final username = (await Telegram(BOT_TOKEN).getMe()).username;
    var teledart = TeleDart(BOT_TOKEN, Event(username!));

    teledart.start();

    teledart.onMessage(entityType: 'bot_command', keyword: 'start')
        .listen((message) => teledart.sendMessage(message.chat.id, 'Чтобы получить актуальную информацию по успеваемости, введите команду /getInformation'));

    teledart.onMessage(entityType: 'bot_command', keyword: 'getInformation')
        .listen((message) {
          teledart.sendMessage(message.chat.id, 'Введите студ. номер');
          teledart.onMessage().listen((message) {
              teledart.sendMessage(message.chat.id, t.getSubjectFromPair(0) + ',' + t.getScoreFromPair(0) + ';' +t.getSubjectFromPair(1) + ',' +t.getScoreFromPair(1) + ';' +t.getSubjectFromPair(2) + ',' + t.getScoreFromPair(2));
          }
          );
        }
        );



  }



}