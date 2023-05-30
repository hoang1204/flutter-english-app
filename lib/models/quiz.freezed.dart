// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quiz.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Quiz _$QuizFromJson(Map<String, dynamic> json) {
  return _Quiz.fromJson(json);
}

/// @nodoc
mixin _$Quiz {
  String? get id => throw _privateConstructorUsedError;
  String get qTopic => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;
  String get c => throw _privateConstructorUsedError;
  String get d => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizCopyWith<Quiz> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizCopyWith<$Res> {
  factory $QuizCopyWith(Quiz value, $Res Function(Quiz) then) =
      _$QuizCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String qTopic,
      String content,
      String answer,
      String a,
      String b,
      String c,
      String d});
}

/// @nodoc
class _$QuizCopyWithImpl<$Res> implements $QuizCopyWith<$Res> {
  _$QuizCopyWithImpl(this._value, this._then);

  final Quiz _value;
  // ignore: unused_field
  final $Res Function(Quiz) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? qTopic = freezed,
    Object? content = freezed,
    Object? answer = freezed,
    Object? a = freezed,
    Object? b = freezed,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qTopic: qTopic == freezed
          ? _value.qTopic
          : qTopic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: c == freezed
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: d == freezed
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_QuizCopyWith<$Res> implements $QuizCopyWith<$Res> {
  factory _$$_QuizCopyWith(_$_Quiz value, $Res Function(_$_Quiz) then) =
      __$$_QuizCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String qTopic,
      String content,
      String answer,
      String a,
      String b,
      String c,
      String d});
}

/// @nodoc
class __$$_QuizCopyWithImpl<$Res> extends _$QuizCopyWithImpl<$Res>
    implements _$$_QuizCopyWith<$Res> {
  __$$_QuizCopyWithImpl(_$_Quiz _value, $Res Function(_$_Quiz) _then)
      : super(_value, (v) => _then(v as _$_Quiz));

  @override
  _$_Quiz get _value => super._value as _$_Quiz;

  @override
  $Res call({
    Object? id = freezed,
    Object? qTopic = freezed,
    Object? content = freezed,
    Object? answer = freezed,
    Object? a = freezed,
    Object? b = freezed,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_$_Quiz(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      qTopic: qTopic == freezed
          ? _value.qTopic
          : qTopic // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
      c: c == freezed
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String,
      d: d == freezed
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Quiz implements _Quiz {
  const _$_Quiz(
      {this.id,
      required this.qTopic,
      required this.content,
      required this.answer,
      required this.a,
      required this.b,
      required this.c,
      required this.d});

  factory _$_Quiz.fromJson(Map<String, dynamic> json) => _$$_QuizFromJson(json);

  @override
  final String? id;
  @override
  final String qTopic;
  @override
  final String content;
  @override
  final String answer;
  @override
  final String a;
  @override
  final String b;
  @override
  final String c;
  @override
  final String d;

  @override
  String toString() {
    return 'Quiz(id: $id, qTopic: $qTopic, content: $content, answer: $answer, a: $a, b: $b, c: $c, d: $d)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quiz &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.qTopic, qTopic) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.b, b) &&
            const DeepCollectionEquality().equals(other.c, c) &&
            const DeepCollectionEquality().equals(other.d, d));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(qTopic),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(b),
      const DeepCollectionEquality().hash(c),
      const DeepCollectionEquality().hash(d));

  @JsonKey(ignore: true)
  @override
  _$$_QuizCopyWith<_$_Quiz> get copyWith =>
      __$$_QuizCopyWithImpl<_$_Quiz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizToJson(
      this,
    );
  }
}

abstract class _Quiz implements Quiz {
  const factory _Quiz(
      {final String? id,
      required final String qTopic,
      required final String content,
      required final String answer,
      required final String a,
      required final String b,
      required final String c,
      required final String d}) = _$_Quiz;

  factory _Quiz.fromJson(Map<String, dynamic> json) = _$_Quiz.fromJson;

  @override
  String? get id;
  @override
  String get qTopic;
  @override
  String get content;
  @override
  String get answer;
  @override
  String get a;
  @override
  String get b;
  @override
  String get c;
  @override
  String get d;
  @override
  @JsonKey(ignore: true)
  _$$_QuizCopyWith<_$_Quiz> get copyWith => throw _privateConstructorUsedError;
}
