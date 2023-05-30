// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'newword.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewWord _$$_NewWordFromJson(Map<String, dynamic> json) => _$_NewWord(
      word: json['word'] as String,
      definition: json['definition'] as String?,
      vietnam: json['vietnam'] as String?,
      example: json['example'] as String?,
      imagePath: json['imagePath'] as String?,
    );

Map<String, dynamic> _$$_NewWordToJson(_$_NewWord instance) =>
    <String, dynamic>{
      'word': instance.word,
      'definition': instance.definition,
      'vietnam': instance.vietnam,
      'example': instance.example,
      'imagePath': instance.imagePath,
    };
