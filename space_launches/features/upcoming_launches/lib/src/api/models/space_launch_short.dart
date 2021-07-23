import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:launch_status/launch_status.dart';

part 'space_launch_short.freezed.dart';
part 'space_launch_short.g.dart';

@freezed
class SpaceLaunchShort with _$SpaceLaunchShort {
  const factory SpaceLaunchShort({
    required String id,
    required String name,
    required String image,
    @JsonKey(name: 'window_start') required DateTime windowStart,
    LaunchStatus? status,
  }) = _SpaceLaunchShort;

  factory SpaceLaunchShort.fromJson(Map<String, dynamic> json) =>
      _$SpaceLaunchShortFromJson(json);
}
