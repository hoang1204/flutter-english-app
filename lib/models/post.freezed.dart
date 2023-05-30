// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Word _$WordFromJson(Map<String, dynamic> json) {
  return _Word.fromJson(json);
}

/// @nodoc
mixin _$Word {
  String get word => throw _privateConstructorUsedError;
  String? get vietnam => throw _privateConstructorUsedError;
  String? get phonetic => throw _privateConstructorUsedError;
  List<Phonetic>? get phonetics => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;
  List<Meaning>? get meanings => throw _privateConstructorUsedError;
  String? get pathImage => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordCopyWith<Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res>;
  $Res call(
      {String word,
      String? vietnam,
      String? phonetic,
      List<Phonetic>? phonetics,
      String? origin,
      List<Meaning>? meanings,
      String? pathImage,
      String? example});
}

/// @nodoc
class _$WordCopyWithImpl<$Res> implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  final Word _value;
  // ignore: unused_field
  final $Res Function(Word) _then;

  @override
  $Res call({
    Object? word = freezed,
    Object? vietnam = freezed,
    Object? phonetic = freezed,
    Object? phonetics = freezed,
    Object? origin = freezed,
    Object? meanings = freezed,
    Object? pathImage = freezed,
    Object? example = freezed,
  }) {
    return _then(_value.copyWith(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      vietnam: vietnam == freezed
          ? _value.vietnam
          : vietnam // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetic: phonetic == freezed
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: phonetics == freezed
          ? _value.phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<Phonetic>?,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      meanings: meanings == freezed
          ? _value.meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Meaning>?,
      pathImage: pathImage == freezed
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String?,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_WordCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$$_WordCopyWith(_$_Word value, $Res Function(_$_Word) then) =
      __$$_WordCopyWithImpl<$Res>;
  @override
  $Res call(
      {String word,
      String? vietnam,
      String? phonetic,
      List<Phonetic>? phonetics,
      String? origin,
      List<Meaning>? meanings,
      String? pathImage,
      String? example});
}

/// @nodoc
class __$$_WordCopyWithImpl<$Res> extends _$WordCopyWithImpl<$Res>
    implements _$$_WordCopyWith<$Res> {
  __$$_WordCopyWithImpl(_$_Word _value, $Res Function(_$_Word) _then)
      : super(_value, (v) => _then(v as _$_Word));

  @override
  _$_Word get _value => super._value as _$_Word;

  @override
  $Res call({
    Object? word = freezed,
    Object? vietnam = freezed,
    Object? phonetic = freezed,
    Object? phonetics = freezed,
    Object? origin = freezed,
    Object? meanings = freezed,
    Object? pathImage = freezed,
    Object? example = freezed,
  }) {
    return _then(_$_Word(
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      vietnam: vietnam == freezed
          ? _value.vietnam
          : vietnam // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetic: phonetic == freezed
          ? _value.phonetic
          : phonetic // ignore: cast_nullable_to_non_nullable
              as String?,
      phonetics: phonetics == freezed
          ? _value._phonetics
          : phonetics // ignore: cast_nullable_to_non_nullable
              as List<Phonetic>?,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      meanings: meanings == freezed
          ? _value._meanings
          : meanings // ignore: cast_nullable_to_non_nullable
              as List<Meaning>?,
      pathImage: pathImage == freezed
          ? _value.pathImage
          : pathImage // ignore: cast_nullable_to_non_nullable
              as String?,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Word implements _Word {
  const _$_Word(
      {required this.word,
      this.vietnam,
      this.phonetic,
      final List<Phonetic>? phonetics,
      this.origin,
      final List<Meaning>? meanings,
      this.pathImage,
      this.example})
      : _phonetics = phonetics,
        _meanings = meanings;

  factory _$_Word.fromJson(Map<String, dynamic> json) => _$$_WordFromJson(json);

  @override
  final String word;
  @override
  final String? vietnam;
  @override
  final String? phonetic;
  final List<Phonetic>? _phonetics;
  @override
  List<Phonetic>? get phonetics {
    final value = _phonetics;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? origin;
  final List<Meaning>? _meanings;
  @override
  List<Meaning>? get meanings {
    final value = _meanings;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pathImage;
  @override
  final String? example;

  @override
  String toString() {
    return 'Word(word: $word, vietnam: $vietnam, phonetic: $phonetic, phonetics: $phonetics, origin: $origin, meanings: $meanings, pathImage: $pathImage, example: $example)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Word &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality().equals(other.vietnam, vietnam) &&
            const DeepCollectionEquality().equals(other.phonetic, phonetic) &&
            const DeepCollectionEquality()
                .equals(other._phonetics, _phonetics) &&
            const DeepCollectionEquality().equals(other.origin, origin) &&
            const DeepCollectionEquality().equals(other._meanings, _meanings) &&
            const DeepCollectionEquality().equals(other.pathImage, pathImage) &&
            const DeepCollectionEquality().equals(other.example, example));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(vietnam),
      const DeepCollectionEquality().hash(phonetic),
      const DeepCollectionEquality().hash(_phonetics),
      const DeepCollectionEquality().hash(origin),
      const DeepCollectionEquality().hash(_meanings),
      const DeepCollectionEquality().hash(pathImage),
      const DeepCollectionEquality().hash(example));

  @JsonKey(ignore: true)
  @override
  _$$_WordCopyWith<_$_Word> get copyWith =>
      __$$_WordCopyWithImpl<_$_Word>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordToJson(
      this,
    );
  }
}

abstract class _Word implements Word {
  const factory _Word(
      {required final String word,
      final String? vietnam,
      final String? phonetic,
      final List<Phonetic>? phonetics,
      final String? origin,
      final List<Meaning>? meanings,
      final String? pathImage,
      final String? example}) = _$_Word;

  factory _Word.fromJson(Map<String, dynamic> json) = _$_Word.fromJson;

  @override
  String get word;
  @override
  String? get vietnam;
  @override
  String? get phonetic;
  @override
  List<Phonetic>? get phonetics;
  @override
  String? get origin;
  @override
  List<Meaning>? get meanings;
  @override
  String? get pathImage;
  @override
  String? get example;
  @override
  @JsonKey(ignore: true)
  _$$_WordCopyWith<_$_Word> get copyWith => throw _privateConstructorUsedError;
}

Meaning _$MeaningFromJson(Map<String, dynamic> json) {
  return _Meaning.fromJson(json);
}

/// @nodoc
mixin _$Meaning {
  String? get partOfSpeech => throw _privateConstructorUsedError;
  List<Definition>? get definitions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeaningCopyWith<Meaning> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningCopyWith<$Res> {
  factory $MeaningCopyWith(Meaning value, $Res Function(Meaning) then) =
      _$MeaningCopyWithImpl<$Res>;
  $Res call({String? partOfSpeech, List<Definition>? definitions});
}

/// @nodoc
class _$MeaningCopyWithImpl<$Res> implements $MeaningCopyWith<$Res> {
  _$MeaningCopyWithImpl(this._value, this._then);

  final Meaning _value;
  // ignore: unused_field
  final $Res Function(Meaning) _then;

  @override
  $Res call({
    Object? partOfSpeech = freezed,
    Object? definitions = freezed,
  }) {
    return _then(_value.copyWith(
      partOfSpeech: partOfSpeech == freezed
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String?,
      definitions: definitions == freezed
          ? _value.definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Definition>?,
    ));
  }
}

/// @nodoc
abstract class _$$_MeaningCopyWith<$Res> implements $MeaningCopyWith<$Res> {
  factory _$$_MeaningCopyWith(
          _$_Meaning value, $Res Function(_$_Meaning) then) =
      __$$_MeaningCopyWithImpl<$Res>;
  @override
  $Res call({String? partOfSpeech, List<Definition>? definitions});
}

/// @nodoc
class __$$_MeaningCopyWithImpl<$Res> extends _$MeaningCopyWithImpl<$Res>
    implements _$$_MeaningCopyWith<$Res> {
  __$$_MeaningCopyWithImpl(_$_Meaning _value, $Res Function(_$_Meaning) _then)
      : super(_value, (v) => _then(v as _$_Meaning));

  @override
  _$_Meaning get _value => super._value as _$_Meaning;

  @override
  $Res call({
    Object? partOfSpeech = freezed,
    Object? definitions = freezed,
  }) {
    return _then(_$_Meaning(
      partOfSpeech: partOfSpeech == freezed
          ? _value.partOfSpeech
          : partOfSpeech // ignore: cast_nullable_to_non_nullable
              as String?,
      definitions: definitions == freezed
          ? _value._definitions
          : definitions // ignore: cast_nullable_to_non_nullable
              as List<Definition>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meaning implements _Meaning {
  const _$_Meaning({this.partOfSpeech, final List<Definition>? definitions})
      : _definitions = definitions;

  factory _$_Meaning.fromJson(Map<String, dynamic> json) =>
      _$$_MeaningFromJson(json);

  @override
  final String? partOfSpeech;
  final List<Definition>? _definitions;
  @override
  List<Definition>? get definitions {
    final value = _definitions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Meaning(partOfSpeech: $partOfSpeech, definitions: $definitions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meaning &&
            const DeepCollectionEquality()
                .equals(other.partOfSpeech, partOfSpeech) &&
            const DeepCollectionEquality()
                .equals(other._definitions, _definitions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(partOfSpeech),
      const DeepCollectionEquality().hash(_definitions));

  @JsonKey(ignore: true)
  @override
  _$$_MeaningCopyWith<_$_Meaning> get copyWith =>
      __$$_MeaningCopyWithImpl<_$_Meaning>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeaningToJson(
      this,
    );
  }
}

abstract class _Meaning implements Meaning {
  const factory _Meaning(
      {final String? partOfSpeech,
      final List<Definition>? definitions}) = _$_Meaning;

  factory _Meaning.fromJson(Map<String, dynamic> json) = _$_Meaning.fromJson;

  @override
  String? get partOfSpeech;
  @override
  List<Definition>? get definitions;
  @override
  @JsonKey(ignore: true)
  _$$_MeaningCopyWith<_$_Meaning> get copyWith =>
      throw _privateConstructorUsedError;
}

Definition _$DefinitionFromJson(Map<String, dynamic> json) {
  return _Definition.fromJson(json);
}

/// @nodoc
mixin _$Definition {
  String? get definition => throw _privateConstructorUsedError;
  String? get example => throw _privateConstructorUsedError;
  List<dynamic>? get synonyms => throw _privateConstructorUsedError;
  List<dynamic>? get antonyms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefinitionCopyWith<Definition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefinitionCopyWith<$Res> {
  factory $DefinitionCopyWith(
          Definition value, $Res Function(Definition) then) =
      _$DefinitionCopyWithImpl<$Res>;
  $Res call(
      {String? definition,
      String? example,
      List<dynamic>? synonyms,
      List<dynamic>? antonyms});
}

/// @nodoc
class _$DefinitionCopyWithImpl<$Res> implements $DefinitionCopyWith<$Res> {
  _$DefinitionCopyWithImpl(this._value, this._then);

  final Definition _value;
  // ignore: unused_field
  final $Res Function(Definition) _then;

  @override
  $Res call({
    Object? definition = freezed,
    Object? example = freezed,
    Object? synonyms = freezed,
    Object? antonyms = freezed,
  }) {
    return _then(_value.copyWith(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: synonyms == freezed
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      antonyms: antonyms == freezed
          ? _value.antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DefinitionCopyWith<$Res>
    implements $DefinitionCopyWith<$Res> {
  factory _$$_DefinitionCopyWith(
          _$_Definition value, $Res Function(_$_Definition) then) =
      __$$_DefinitionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? definition,
      String? example,
      List<dynamic>? synonyms,
      List<dynamic>? antonyms});
}

/// @nodoc
class __$$_DefinitionCopyWithImpl<$Res> extends _$DefinitionCopyWithImpl<$Res>
    implements _$$_DefinitionCopyWith<$Res> {
  __$$_DefinitionCopyWithImpl(
      _$_Definition _value, $Res Function(_$_Definition) _then)
      : super(_value, (v) => _then(v as _$_Definition));

  @override
  _$_Definition get _value => super._value as _$_Definition;

  @override
  $Res call({
    Object? definition = freezed,
    Object? example = freezed,
    Object? synonyms = freezed,
    Object? antonyms = freezed,
  }) {
    return _then(_$_Definition(
      definition: definition == freezed
          ? _value.definition
          : definition // ignore: cast_nullable_to_non_nullable
              as String?,
      example: example == freezed
          ? _value.example
          : example // ignore: cast_nullable_to_non_nullable
              as String?,
      synonyms: synonyms == freezed
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      antonyms: antonyms == freezed
          ? _value._antonyms
          : antonyms // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Definition implements _Definition {
  const _$_Definition(
      {this.definition,
      this.example,
      final List<dynamic>? synonyms,
      final List<dynamic>? antonyms})
      : _synonyms = synonyms,
        _antonyms = antonyms;

  factory _$_Definition.fromJson(Map<String, dynamic> json) =>
      _$$_DefinitionFromJson(json);

  @override
  final String? definition;
  @override
  final String? example;
  final List<dynamic>? _synonyms;
  @override
  List<dynamic>? get synonyms {
    final value = _synonyms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _antonyms;
  @override
  List<dynamic>? get antonyms {
    final value = _antonyms;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Definition(definition: $definition, example: $example, synonyms: $synonyms, antonyms: $antonyms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Definition &&
            const DeepCollectionEquality()
                .equals(other.definition, definition) &&
            const DeepCollectionEquality().equals(other.example, example) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms) &&
            const DeepCollectionEquality().equals(other._antonyms, _antonyms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(definition),
      const DeepCollectionEquality().hash(example),
      const DeepCollectionEquality().hash(_synonyms),
      const DeepCollectionEquality().hash(_antonyms));

  @JsonKey(ignore: true)
  @override
  _$$_DefinitionCopyWith<_$_Definition> get copyWith =>
      __$$_DefinitionCopyWithImpl<_$_Definition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefinitionToJson(
      this,
    );
  }
}

abstract class _Definition implements Definition {
  const factory _Definition(
      {final String? definition,
      final String? example,
      final List<dynamic>? synonyms,
      final List<dynamic>? antonyms}) = _$_Definition;

  factory _Definition.fromJson(Map<String, dynamic> json) =
      _$_Definition.fromJson;

  @override
  String? get definition;
  @override
  String? get example;
  @override
  List<dynamic>? get synonyms;
  @override
  List<dynamic>? get antonyms;
  @override
  @JsonKey(ignore: true)
  _$$_DefinitionCopyWith<_$_Definition> get copyWith =>
      throw _privateConstructorUsedError;
}

Phonetic _$PhoneticFromJson(Map<String, dynamic> json) {
  return _Phonetic.fromJson(json);
}

/// @nodoc
mixin _$Phonetic {
  String? get text => throw _privateConstructorUsedError;
  String? get audio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneticCopyWith<Phonetic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneticCopyWith<$Res> {
  factory $PhoneticCopyWith(Phonetic value, $Res Function(Phonetic) then) =
      _$PhoneticCopyWithImpl<$Res>;
  $Res call({String? text, String? audio});
}

/// @nodoc
class _$PhoneticCopyWithImpl<$Res> implements $PhoneticCopyWith<$Res> {
  _$PhoneticCopyWithImpl(this._value, this._then);

  final Phonetic _value;
  // ignore: unused_field
  final $Res Function(Phonetic) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? audio = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PhoneticCopyWith<$Res> implements $PhoneticCopyWith<$Res> {
  factory _$$_PhoneticCopyWith(
          _$_Phonetic value, $Res Function(_$_Phonetic) then) =
      __$$_PhoneticCopyWithImpl<$Res>;
  @override
  $Res call({String? text, String? audio});
}

/// @nodoc
class __$$_PhoneticCopyWithImpl<$Res> extends _$PhoneticCopyWithImpl<$Res>
    implements _$$_PhoneticCopyWith<$Res> {
  __$$_PhoneticCopyWithImpl(
      _$_Phonetic _value, $Res Function(_$_Phonetic) _then)
      : super(_value, (v) => _then(v as _$_Phonetic));

  @override
  _$_Phonetic get _value => super._value as _$_Phonetic;

  @override
  $Res call({
    Object? text = freezed,
    Object? audio = freezed,
  }) {
    return _then(_$_Phonetic(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      audio: audio == freezed
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Phonetic implements _Phonetic {
  const _$_Phonetic({this.text, this.audio});

  factory _$_Phonetic.fromJson(Map<String, dynamic> json) =>
      _$$_PhoneticFromJson(json);

  @override
  final String? text;
  @override
  final String? audio;

  @override
  String toString() {
    return 'Phonetic(text: $text, audio: $audio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Phonetic &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.audio, audio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(audio));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneticCopyWith<_$_Phonetic> get copyWith =>
      __$$_PhoneticCopyWithImpl<_$_Phonetic>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PhoneticToJson(
      this,
    );
  }
}

abstract class _Phonetic implements Phonetic {
  const factory _Phonetic({final String? text, final String? audio}) =
      _$_Phonetic;

  factory _Phonetic.fromJson(Map<String, dynamic> json) = _$_Phonetic.fromJson;

  @override
  String? get text;
  @override
  String? get audio;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneticCopyWith<_$_Phonetic> get copyWith =>
      throw _privateConstructorUsedError;
}
