// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wordlearn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WordLearn _$WordLearnFromJson(Map<String, dynamic> json) {
  return _WordLearn.fromJson(json);
}

/// @nodoc
mixin _$WordLearn {
  String? get idw => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get vietnam => throw _privateConstructorUsedError;
  String get urlImage => throw _privateConstructorUsedError;
  String get urlAudio => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordLearnCopyWith<WordLearn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordLearnCopyWith<$Res> {
  factory $WordLearnCopyWith(WordLearn value, $Res Function(WordLearn) then) =
      _$WordLearnCopyWithImpl<$Res>;
  $Res call(
      {String? idw,
      String word,
      String vietnam,
      String urlImage,
      String urlAudio,
      String? description,
      String? topic});
}

/// @nodoc
class _$WordLearnCopyWithImpl<$Res> implements $WordLearnCopyWith<$Res> {
  _$WordLearnCopyWithImpl(this._value, this._then);

  final WordLearn _value;
  // ignore: unused_field
  final $Res Function(WordLearn) _then;

  @override
  $Res call({
    Object? idw = freezed,
    Object? word = freezed,
    Object? vietnam = freezed,
    Object? urlImage = freezed,
    Object? urlAudio = freezed,
    Object? description = freezed,
    Object? topic = freezed,
  }) {
    return _then(_value.copyWith(
      idw: idw == freezed
          ? _value.idw
          : idw // ignore: cast_nullable_to_non_nullable
              as String?,
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      vietnam: vietnam == freezed
          ? _value.vietnam
          : vietnam // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      urlAudio: urlAudio == freezed
          ? _value.urlAudio
          : urlAudio // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WordLearnCopyWith<$Res> implements $WordLearnCopyWith<$Res> {
  factory _$$_WordLearnCopyWith(
          _$_WordLearn value, $Res Function(_$_WordLearn) then) =
      __$$_WordLearnCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? idw,
      String word,
      String vietnam,
      String urlImage,
      String urlAudio,
      String? description,
      String? topic});
}

/// @nodoc
class __$$_WordLearnCopyWithImpl<$Res> extends _$WordLearnCopyWithImpl<$Res>
    implements _$$_WordLearnCopyWith<$Res> {
  __$$_WordLearnCopyWithImpl(
      _$_WordLearn _value, $Res Function(_$_WordLearn) _then)
      : super(_value, (v) => _then(v as _$_WordLearn));

  @override
  _$_WordLearn get _value => super._value as _$_WordLearn;

  @override
  $Res call({
    Object? idw = freezed,
    Object? word = freezed,
    Object? vietnam = freezed,
    Object? urlImage = freezed,
    Object? urlAudio = freezed,
    Object? description = freezed,
    Object? topic = freezed,
  }) {
    return _then(_$_WordLearn(
      idw: idw == freezed
          ? _value.idw
          : idw // ignore: cast_nullable_to_non_nullable
              as String?,
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      vietnam: vietnam == freezed
          ? _value.vietnam
          : vietnam // ignore: cast_nullable_to_non_nullable
              as String,
      urlImage: urlImage == freezed
          ? _value.urlImage
          : urlImage // ignore: cast_nullable_to_non_nullable
              as String,
      urlAudio: urlAudio == freezed
          ? _value.urlAudio
          : urlAudio // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WordLearn implements _WordLearn {
  const _$_WordLearn(
      {this.idw,
      required this.word,
      required this.vietnam,
      required this.urlImage,
      required this.urlAudio,
      this.description,
      this.topic});

  factory _$_WordLearn.fromJson(Map<String, dynamic> json) =>
      _$$_WordLearnFromJson(json);

  @override
  final String? idw;
  @override
  final String word;
  @override
  final String vietnam;
  @override
  final String urlImage;
  @override
  final String urlAudio;
  @override
  final String? description;
  @override
  final String? topic;

  @override
  String toString() {
    return 'WordLearn(idw: $idw, word: $word, vietnam: $vietnam, urlImage: $urlImage, urlAudio: $urlAudio, description: $description, topic: $topic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WordLearn &&
            const DeepCollectionEquality().equals(other.idw, idw) &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other.vietnam, vietnam) &&
            const DeepCollectionEquality().equals(other.urlImage, urlImage) &&
            const DeepCollectionEquality().equals(other.urlAudio, urlAudio) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.topic, topic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idw),
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(vietnam),
      const DeepCollectionEquality().hash(urlImage),
      const DeepCollectionEquality().hash(urlAudio),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(topic));

  @JsonKey(ignore: true)
  @override
  _$$_WordLearnCopyWith<_$_WordLearn> get copyWith =>
      __$$_WordLearnCopyWithImpl<_$_WordLearn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordLearnToJson(
      this,
    );
  }
}

abstract class _WordLearn implements WordLearn {
  const factory _WordLearn(
      {final String? idw,
      required final String word,
      required final String vietnam,
      required final String urlImage,
      required final String urlAudio,
      final String? description,
      final String? topic}) = _$_WordLearn;

  factory _WordLearn.fromJson(Map<String, dynamic> json) =
      _$_WordLearn.fromJson;

  @override
  String? get idw;
  @override
  String get word;
  @override
  String get vietnam;
  @override
  String get urlImage;
  @override
  String get urlAudio;
  @override
  String? get description;
  @override
  String? get topic;
  @override
  @JsonKey(ignore: true)
  _$$_WordLearnCopyWith<_$_WordLearn> get copyWith =>
      throw _privateConstructorUsedError;
}
