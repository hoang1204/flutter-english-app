// To parse this JSON data, do
//
//     final quiz = quizFromJson(jsonString);

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../services/remote_service.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

List<Quiz> QuizFromJson(String str) =>
    List<Quiz>.from(json.decode(str).map((x) => Quiz.fromJson(x)));
String quizToJson(Quiz data) => json.encode(data.toJson());

@freezed
abstract class Quiz with _$Quiz {
  const factory Quiz({
    String? id,
    required String qTopic,
    required String content,
    required String answer,
    required String a,
    required String b,
    required String c,
    required String d,
  }) = _Quiz;
  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}

class actionQuiz extends StateNotifier<List<Quiz>> {
  actionQuiz(List<Quiz>? state) : super(state ?? []);
  void loadData(String qTopic) async {
    state = await getDataQuiz(qTopic);
    state.shuffle();
  }

  void resetData() {
    state = [];
  }
}
