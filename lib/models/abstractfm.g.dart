// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'abstractfm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbstractfmImpl _$$AbstractfmImplFromJson(Map<String, dynamic> json) =>
    _$AbstractfmImpl(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AbstractfmImplToJson(_$AbstractfmImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      baseUrl: json['base_url'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'images': instance.images,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: json['id'] as String?,
      filename: json['filename'] as String?,
      score: json['score'] as int?,
      wins: json['wins'] as int?,
      losses: json['losses'] as int?,
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'score': instance.score,
      'wins': instance.wins,
      'losses': instance.losses,
    };
