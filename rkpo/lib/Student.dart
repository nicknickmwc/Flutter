import 'package:flutter/material.dart';
import 'package:rkpo/ProgressPair.dart';

class Student {

  String studentNumber = '';
  String group = '';
  String name = '';
  String surname = '';

  List progress = <ProgressPair>[];


  setUserData(String studentNumber, String group, String name, String surname) {
    this.studentNumber = studentNumber;
    this.group = group;
    this.name = name;
    this.surname = surname;
  }

  String getSubjectFromPair(int index) {
    ProgressPair progressPair = ProgressPair();
    progressPair = progress[index];
    return progressPair.subject;
  }

  String getScoreFromPair(int index) {
    ProgressPair progressPair = ProgressPair();
    progressPair = progress[index];
    return progressPair.score;
  }

  setPair(String subject, String score) {
    ProgressPair progressPair = ProgressPair();
    progressPair.subject = subject;
    progressPair.score = score;
    progress.add(progressPair);
  }


}