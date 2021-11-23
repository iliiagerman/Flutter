import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    @required this.title,
    @required this.answers,
  })
}

class QustionData{
  final _data = [

    List<Question> get questions => [..._data];
}