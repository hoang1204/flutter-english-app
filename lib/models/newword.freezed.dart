// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'newword.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewWord _$NewWordFromJson(Map<String, dynamic> json) {
  return _NewWord.fromJson(json);
}

/// @nodoc
mixin _$NewWord {
  String get word => throw _privateConstructorUsedError;
  String? get definition => throw _privateConstructorUsedError;
  String? get vietnam => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewWordCopyWith<NewWord> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewWordCopyWith<$Res> {
  factory $NewWordCopyWith(NewWord value, $Res Function(NewWord) then) =
      _$NewWordCopyWithImpl<$Res>;
  $Res call(
      {String word,
      String? definition,
      String? vietnam,
      String? example,
      String? imagePath});
}

/// @nodoc
class _$NewWordCopyWithImpl<$Res> implements $NewWordCopyWith<$Res> {
  _$NewWordCopyWithImpl(this._value, this._then);

  final NewWord _value;
  // ignore: unused_field
  final $Res Function(NewWord) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? definition = freezed,
    Object? vietnam = freezed,
    Object? example = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      vietnam: vietnam == freezed
          ? _value.vietnam
          : vietnam // ignore: cast_nullable_to_non_nullable
              as String?,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NewWordCopyWith<$Res> implements $NewWordCopyWith<$Res> {
  factory _$$_NewWordCopyWith(
          _$_NewWord value, $Res Function(_$_NewWord) then) =
      __$$_NewWordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String word,
      String? definition,
      String? vietnam,
      String? example,
      String? imagePath});
}

/// @nodoc
class __$$_NewWordCopyWithImpl<$Res> extends _$NewWordCopyWithImpl<$Res>
    implements _$$_NewWordCopyWith<$Res> {
  __$$_NewWordCopyWithImpl(_$_NewWord _value, $Res Function(_$_NewWord) _then)
      : super(_value, (v) => _then(v as _$_NewWord));

  @override
  _$_NewWord get _value => super._value as _$_NewWord;

  @override
  $Res call({
    Object? word = freezed,
    Object? definition = freezed,
    Object? vietnam = freezed,
    Object? example = freezed,
    Object? imagePath = freezed,
  }) {
    return _then(_$_NewWord(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      vietnam: vietnam == freezed
          ? _value.vietnam
          : vietnam // ignore: cast_nullable_to_non_nullable
              as String?,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewWord with DiagnosticableTreeMixin implements _NewWord {
  const _$_NewWord(
      {required this.word,
      this.definition,
      this.vietnam,
      this.example,
      this.imagePath});

  factory _$_NewWord.fromJson(Map<String, dynamic> json) =>
      _$$_NewWordFromJson(json);

  @override
  final String word;
  @override
  final String? definition;
  @override
  final String? vietnam;
  @override
  final String? example;
  @override
  final String? imagePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewWord(word: $word, definition: $definition, vietnam: $vietnam, example: $example, imagePath: $imagePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewWord'))
      ..add(DiagnosticsProperty('word', word))
      ..add(DiagnosticsProperty('definition', definition))
      ..add(DiagnosticsProperty('vietnam', vietnam))
      ..add(DiagnosticsProperty('example', example))
      ..add(DiagnosticsProperty('imagePath', imagePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewWord &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality().equals(other.vietnam, vietnam) &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(vietnam),
      const DeepCollectionEquality().hash(example),
      const DeepCollectionEquality().hash(imagePath));

  @JsonKey(ignore: true)
  @override
  _$$_NewWordCopyWith<_$_NewWord> get copyWith =>
      __$$_NewWordCopyWithImpl<_$_NewWord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewWordToJson(
      this,
    );
  }
}

abstract class _NewWord implements NewWord {
  const factory _NewWord(
      {required final String word,
      final String? definition,
      final String? vietnam,
      final String? example,
      final String? imagePath}) = _$_NewWord;

  factory _NewWord.fromJson(Map<String, dynamic> json) = _$_NewWord.fromJson;

  @override
  String get word;
  @override
  String? get definition;
  @override
  String? get vietnam;
  @override
  String? get example;
  @override
  String? get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_NewWordCopyWith<_$_NewWord> get copyWith =>
      throw _privateConstructorUsedError;
}
