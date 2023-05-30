// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Word _$$_WordFromJson(Map<String, dynamic> json) => _$_Word(
      word: json['word'] as String,
      vietnam: json['vietnam'] as String?,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
          ?.map((e) => Phonetic.fromJson(e as Map<String, dynamic>))
          .toList(),
      origin: json['origin'] as String?,
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => Meaning.fromJson(e as Map<String, dynamic>))
          .toList(),
      pathImage: json['pathImage'] as String?,
      example: json['example'] as String?,
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'word': instance.word,
      'vietnam': instance.vietnam,
      'phonetic': instance.phonetic,
      'phonetics': instance.phonetics,
      'origin': instance.origin,
      'meanings': instance.meanings,
      'pathImage': instance.pathImage,
      'example': instance.example,
    };

_$_Meaning _$$_MeaningFromJson(Map<String, dynamic> json) => _$_Meaning(
      partOfSpeech: json['partOfSpeech'] as String?,
      definitions: (json['definitions'] as List<dynamic>?)
          ?.map((e) => Definition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MeaningToJson(_$_Meaning instance) =>
    <String, dynamic>{
      'partOfSpeech': instance.partOfSpeech,
      'definitions': instance.definitions,
    };

_$_Definition _$$_DefinitionFromJson(Map<String, dynamic> json) =>
    _$_Definition(
      definition: json['definition'] as String?,
      example: json['example'] as String?,
      synonyms: json['synonyms'] as List<dynamic>?,
      antonyms: json['antonyms'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_DefinitionToJson(_$_Definition instance) =>
    <String, dynamic>{
      'definition': instance.definition,
      'example': instance.example,
      'synonyms': instance.synonyms,
      'antonyms': instance.antonyms,
    };

_$_Phonetic _$$_PhoneticFromJson(Map<String, dynamic> json) => _$_Phonetic(
      text: json['text'] as String?,
      audio: json['audio'] as String?,
    );

Map<String, dynamic> _$$_PhoneticToJson(_$_Phonetic instance) =>
    <String, dynamic>{
      'text': instance.text,
      'audio': instance.audio,
    };
