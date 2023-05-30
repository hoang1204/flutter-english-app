// To parse this JSON data, do
//
//     final wordLearn = wordLearnFromJson(jsonString);

import 'package:cnpmapp/services/remote_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'wordlearn.freezed.dart';
part 'wordlearn.g.dart';

List<WordLearn> WordLearnFromJson(String str) =>
    List<WordLearn>.from(json.decode(str).map((x) => WordLearn.fromJson(x)));
WordLearn wordLearnFromJson(String str) => WordLearn.fromJson(json.decode(str));

String wordLearnToJson(WordLearn data) => json.encode(data.toJson());

@freezed
abstract class WordLearn with _$WordLearn {
  const factory WordLearn({
    String? idw,
    required String word,
    required String vietnam,
    required String urlImage,
    required String urlAudio,
    String? description,
    String? topic,
  }) = _WordLearn;

  factory WordLearn.fromJson(Map<String, dynamic> json) =>
      _$WordLearnFromJson(json);
}

class actionWordLearn extends StateNotifier<List<WordLearn>> {
  actionWordLearn(List<WordLearn>? state) : super(state ?? []);
  Future<void> loadData(String topic) async {
    state = await getDataWordLearn(topic);
  }

  void Sort() {
    state.sort((a, b) => a.word.compareTo(b.word));
  }
}
// //https://app.quicktype.io/