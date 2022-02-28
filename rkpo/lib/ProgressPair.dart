import 'package:flutter/material.dart';

class ProgressPair {

  String subject = '';
  String score = '';

  ProgressPair();

  ProgressPair.c1(this.subject, this.score);

  setPair(String subject, String score) {
    this.subject = subject;
    this.score = score;
  }

}
