import 'package:freezed_annotation/freezed_annotation.dart';

part 'abstractfm.freezed.dart';
part 'abstractfm.g.dart';

@freezed
class Abstractfm with _$Abstractfm {
  const factory Abstractfm({
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
  }) = _Abstractfm;

  factory Abstractfm.fromJson(Map<String, dynamic> json) =>
      _$AbstractfmFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "base_url") String? baseUrl,
    @JsonKey(name: "images") List<Image>? images,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "filename") String? filename,
    @JsonKey(name: "score") int? score,
    @JsonKey(name: "wins") int? wins,
    @JsonKey(name: "losses") int? losses,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
