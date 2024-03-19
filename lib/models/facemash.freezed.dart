// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facemash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FacemashModel _$FacemashModelFromJson(Map<String, dynamic> json) {
  return _FacemashModel.fromJson(json);
}

/// @nodoc
mixin _$FacemashModel {
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  List<Images>? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacemashModelCopyWith<FacemashModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacemashModelCopyWith<$Res> {
  factory $FacemashModelCopyWith(
          FacemashModel value, $Res Function(FacemashModel) then) =
      _$FacemashModelCopyWithImpl<$Res, FacemashModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "data") List<Images>? data,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class _$FacemashModelCopyWithImpl<$Res, $Val extends FacemashModel>
    implements $FacemashModelCopyWith<$Res> {
  _$FacemashModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Images>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacemashModelImplCopyWith<$Res>
    implements $FacemashModelCopyWith<$Res> {
  factory _$$FacemashModelImplCopyWith(
          _$FacemashModelImpl value, $Res Function(_$FacemashModelImpl) then) =
      __$$FacemashModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool? status,
      @JsonKey(name: "data") List<Images>? data,
      @JsonKey(name: "message") String? message});
}

/// @nodoc
class __$$FacemashModelImplCopyWithImpl<$Res>
    extends _$FacemashModelCopyWithImpl<$Res, _$FacemashModelImpl>
    implements _$$FacemashModelImplCopyWith<$Res> {
  __$$FacemashModelImplCopyWithImpl(
      _$FacemashModelImpl _value, $Res Function(_$FacemashModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$FacemashModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Images>?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacemashModelImpl implements _FacemashModel {
  const _$FacemashModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "data") final List<Images>? data,
      @JsonKey(name: "message") this.message})
      : _data = data;

  factory _$FacemashModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacemashModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool? status;
  final List<Images>? _data;
  @override
  @JsonKey(name: "data")
  List<Images>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'FacemashModel(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacemashModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data), message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacemashModelImplCopyWith<_$FacemashModelImpl> get copyWith =>
      __$$FacemashModelImplCopyWithImpl<_$FacemashModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacemashModelImplToJson(
      this,
    );
  }
}

abstract class _FacemashModel implements FacemashModel {
  const factory _FacemashModel(
      {@JsonKey(name: "status") final bool? status,
      @JsonKey(name: "data") final List<Images>? data,
      @JsonKey(name: "message") final String? message}) = _$FacemashModelImpl;

  factory _FacemashModel.fromJson(Map<String, dynamic> json) =
      _$FacemashModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "data")
  List<Images>? get data;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$FacemashModelImplCopyWith<_$FacemashModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "imageurl")
  String? get imageurl => throw _privateConstructorUsedError;
  @JsonKey(name: "wins")
  int? get wins => throw _privateConstructorUsedError;
  @JsonKey(name: "losses")
  int? get losses => throw _privateConstructorUsedError;
  @JsonKey(name: "score")
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: "expected")
  double? get expected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res, Images>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "imageurl") String? imageurl,
      @JsonKey(name: "wins") int? wins,
      @JsonKey(name: "losses") int? losses,
      @JsonKey(name: "score") int? score,
      @JsonKey(name: "expected") double? expected});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res, $Val extends Images>
    implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageurl = freezed,
    Object? wins = freezed,
    Object? losses = freezed,
    Object? score = freezed,
    Object? expected = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageurl: freezed == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String?,
      wins: freezed == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int?,
      losses: freezed == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      expected: freezed == expected
          ? _value.expected
          : expected // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImagesImplCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$ImagesImplCopyWith(
          _$ImagesImpl value, $Res Function(_$ImagesImpl) then) =
      __$$ImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "imageurl") String? imageurl,
      @JsonKey(name: "wins") int? wins,
      @JsonKey(name: "losses") int? losses,
      @JsonKey(name: "score") int? score,
      @JsonKey(name: "expected") double? expected});
}

/// @nodoc
class __$$ImagesImplCopyWithImpl<$Res>
    extends _$ImagesCopyWithImpl<$Res, _$ImagesImpl>
    implements _$$ImagesImplCopyWith<$Res> {
  __$$ImagesImplCopyWithImpl(
      _$ImagesImpl _value, $Res Function(_$ImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? imageurl = freezed,
    Object? wins = freezed,
    Object? losses = freezed,
    Object? score = freezed,
    Object? expected = freezed,
  }) {
    return _then(_$ImagesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      imageurl: freezed == imageurl
          ? _value.imageurl
          : imageurl // ignore: cast_nullable_to_non_nullable
              as String?,
      wins: freezed == wins
          ? _value.wins
          : wins // ignore: cast_nullable_to_non_nullable
              as int?,
      losses: freezed == losses
          ? _value.losses
          : losses // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      expected: freezed == expected
          ? _value.expected
          : expected // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImagesImpl implements _Images {
  const _$ImagesImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "imageurl") this.imageurl,
      @JsonKey(name: "wins") this.wins,
      @JsonKey(name: "losses") this.losses,
      @JsonKey(name: "score") this.score,
      @JsonKey(name: "expected") this.expected});

  factory _$ImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImagesImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "imageurl")
  final String? imageurl;
  @override
  @JsonKey(name: "wins")
  final int? wins;
  @override
  @JsonKey(name: "losses")
  final int? losses;
  @override
  @JsonKey(name: "score")
  final int? score;
  @override
  @JsonKey(name: "expected")
  final double? expected;

  @override
  String toString() {
    return 'Images(id: $id, imageurl: $imageurl, wins: $wins, losses: $losses, score: $score, expected: $expected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImagesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageurl, imageurl) ||
                other.imageurl == imageurl) &&
            (identical(other.wins, wins) || other.wins == wins) &&
            (identical(other.losses, losses) || other.losses == losses) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.expected, expected) ||
                other.expected == expected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageurl, wins, losses, score, expected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      __$$ImagesImplCopyWithImpl<_$ImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImagesImplToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  const factory _Images(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "imageurl") final String? imageurl,
      @JsonKey(name: "wins") final int? wins,
      @JsonKey(name: "losses") final int? losses,
      @JsonKey(name: "score") final int? score,
      @JsonKey(name: "expected") final double? expected}) = _$ImagesImpl;

  factory _Images.fromJson(Map<String, dynamic> json) = _$ImagesImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "imageurl")
  String? get imageurl;
  @override
  @JsonKey(name: "wins")
  int? get wins;
  @override
  @JsonKey(name: "losses")
  int? get losses;
  @override
  @JsonKey(name: "score")
  int? get score;
  @override
  @JsonKey(name: "expected")
  double? get expected;
  @override
  @JsonKey(ignore: true)
  _$$ImagesImplCopyWith<_$ImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
