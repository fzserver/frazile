// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'facemash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FacemashModelImpl _$$FacemashModelImplFromJson(Map<String, dynamic> json) =>
    _$FacemashModelImpl(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$FacemashModelImplToJson(_$FacemashModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$ImagesImpl _$$ImagesImplFromJson(Map<String, dynamic> json) => _$ImagesImpl(
      id: json['id'] as String?,
      imageurl: json['imageurl'] as String?,
      wins: json['wins'] as int?,
      losses: json['losses'] as int?,
      score: json['score'] as int?,
      expected: (json['expected'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ImagesImplToJson(_$ImagesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imageurl': instance.imageurl,
      'wins': instance.wins,
      'losses': instance.losses,
      'score': instance.score,
      'expected': instance.expected,
    };
