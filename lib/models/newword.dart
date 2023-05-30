import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../services/remote_service.dart';

part 'newword.freezed.dart';
part 'newword.g.dart';

List<NewWord> newWordFromJson(String str) =>
    List<NewWord>.from(json.decode(str).map((x) => NewWord.fromJson(x)));

String newWordToJson(List<NewWord> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class NewWord with _$NewWord {
  const factory NewWord({
    required String word,
    String? definition,
    String? vietnam,
    String? example,
    String? imagePath,
  }) = _NewWord;
  factory NewWord.fromJson(Map<String, dynamic> json) =>
      _$NewWordFromJson(json);
}

class saveNewWord extends StateNotifier<List<NewWord>> {
  saveNewWord(List<NewWord>? state) : super(state ?? []);
  void loadData() async {
    state = await getDataNewWords();
    print("hi");
    print(state);
  }

  void delWord(NewWord target) {
    state = state.where((info) => info.word != target.word).toList();
  }

  void addWord(NewWord temp) {
    state = [
      ...state,
      NewWord(
          word: temp.word,
          definition: temp.definition,
          vietnam: temp.vietnam,
          example: temp.example,
          imagePath: temp.imagePath)
    ];
  }

  void addNewWord(
    String english,
    String? definition,
    String? vietnam,
    String? example,
    String? imagePath,
  ) {
    state = [
      ...state,
      NewWord(
        word: english,
        definition: definition,
        vietnam: vietnam,
        example: example,
        imagePath: imagePath,
      )
    ];
  }
}

// class tempWord extends StateNotifier<List<NewWord>> {
//   tempWord(List<NewWord>? state) : super(state ?? []);

//   void addWord(List<NewWord> temp) {
//     if (temp.isNotEmpty && temp != []) {
//       state = [
//         ...state,
//         NewWord(
//           word: temp[0].word,
//           definition: temp[0].definition,
//           vietnam: temp[0].vietnam,
//           example: temp[0].example,
//           pathImage: temp[0].pathImage,
//         )
//       ];
//     } else
//       return;
//   }

//   void delWord(NewWord target) {
//     state = state.where((info) => info.word != target.word).toList();
//   }
// }
