import 'package:freezed_annotation/freezed_annotation.dart';

part 'facemash.freezed.dart';
part 'facemash.g.dart';

@freezed
class FacemashModel with _$FacemashModel {
  const factory FacemashModel({
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "data") List<Images>? data,
    @JsonKey(name: "message") String? message,
  }) = _FacemashModel;

  factory FacemashModel.fromJson(Map<String, dynamic> json) =>
      _$FacemashModelFromJson(json);
}

@freezed
class Images with _$Images {
  const factory Images({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "imageurl") String? imageurl,
    @JsonKey(name: "wins") int? wins,
    @JsonKey(name: "losses") int? losses,
    @JsonKey(name: "score") int? score,
    @JsonKey(name: "expected") double? expected,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
