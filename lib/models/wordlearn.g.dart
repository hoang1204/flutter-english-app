// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordlearn.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WordLearn _$$_WordLearnFromJson(Map<String, dynamic> json) => _$_WordLearn(
      idw: json['idw'] as String?,
      word: json['word'] as String,
      vietnam: json['vietnam'] as String,
      urlImage: json['urlImage'] as String,
      urlAudio: json['urlAudio'] as String,
      description: json['description'] as String?,
      topic: json['topic'] as String?,
    );

Map<String, dynamic> _$$_WordLearnToJson(_$_WordLearn instance) =>
    <String, dynamic>{
      'idw': instance.idw,
      'word': instance.word,
      'vietnam': instance.vietnam,
      'urlImage': instance.urlImage,
      'urlAudio': instance.urlAudio,
      'description': instance.description,
      'topic': instance.topic,
    };
