// To parse this JSON data, do
//
//     final word = wordFromJson(jsonString);
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'post.freezed.dart';
part 'post.g.dart';

List<Word> wordFromJson(String str) =>
    List<Word>.from(json.decode(str).map((x) => Word.fromJson(x)));
String wordToJson(List<Word> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Word with _$Word {
  const factory Word({
    required String word,
    String? vietnam,
    String? phonetic,
    List<Phonetic>? phonetics,
    String? origin,
    List<Meaning>? meanings,
    String? pathImage,
    String? example,
  }) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
}

@freezed
abstract class Meaning with _$Meaning {
  const factory Meaning({
    String? partOfSpeech,
    List<Definition>? definitions,
  }) = _Meaning;

  factory Meaning.fromJson(Map<String, dynamic> json) =>
      _$MeaningFromJson(json);
}

@freezed
abstract class Definition with _$Definition {
  const factory Definition({
    String? definition,
    String? example,
    List<dynamic>? synonyms,
    List<dynamic>? antonyms,
  }) = _Definition;

  factory Definition.fromJson(Map<String, dynamic> json) =>
      _$DefinitionFromJson(json);
}

@freezed
abstract class Phonetic with _$Phonetic {
  const factory Phonetic({
    String? text,
    String? audio,
  }) = _Phonetic;

  factory Phonetic.fromJson(Map<String, dynamic> json) =>
      _$PhoneticFromJson(json);
}

class actionWord extends StateNotifier<List<Word>> {
  actionWord(List<Word>? state) : super(state ?? []) {
    //loadData();
  }
  // Future<void> loadData() async {
  //   state = await getData();
  // }

  void addWord(Word temp) {
    {
      state = [
        ...state,
        Word(
          word: temp.word,
          vietnam: temp.vietnam,
          phonetic: temp.phonetic,
          phonetics: temp.phonetics,
          origin: temp.origin,
          meanings: temp.meanings,
          pathImage: temp.pathImage,
          example: temp.example,
        )
      ];
    }
  }

  void delWord(Word target) {
    state = state.where((info) => info.word != target.word).toList();
  }

  void addWord2(
    String word,
    String? vietnam,
    String? phonetic,
    List<Phonetic>? phonetics,
    String? origin,
    List<Meaning>? meanings,
    String? pathImage,
    String? example,
  ) {
    {
      state = [
        ...state,
        Word(
          word: word,
          vietnam: vietnam,
          phonetic: phonetic,
          phonetics: phonetics,
          origin: origin,
          meanings: meanings,
          pathImage: pathImage,
          example: example,
        )
      ];
    }
  }
}

class tempWord extends StateNotifier<List<Word>> {
  tempWord(List<Word>? state) : super(state ?? []);

  void addWord(List<Word> temp) {
    if (temp.isNotEmpty && temp != []) {
      state = [
        ...state,
        Word(
          word: temp[0].word,
          vietnam: temp[0].vietnam,
          phonetic: temp[0].phonetic,
          phonetics: temp[0].phonetics,
          origin: temp[0].origin,
          meanings: temp[0].meanings,
          pathImage: temp[0].pathImage,
        )
      ];
    } else
      return;
  }

  void delWord(Word target) {
    state = state.where((info) => info.word != target.word).toList();
  }
}
