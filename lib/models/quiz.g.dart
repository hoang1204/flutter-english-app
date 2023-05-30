// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quiz _$$_QuizFromJson(Map<String, dynamic> json) => _$_Quiz(
      id: json['id'] as String?,
      qTopic: json['qTopic'] as String,
      content: json['content'] as String,
      answer: json['answer'] as String,
      a: json['a'] as String,
      b: json['b'] as String,
      c: json['c'] as String,
      d: json['d'] as String,
    );

Map<String, dynamic> _$$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'qTopic': instance.qTopic,
      'content': instance.content,
      'answer': instance.answer,
      'a': instance.a,
      'b': instance.b,
      'c': instance.c,
      'd': instance.d,
    };
