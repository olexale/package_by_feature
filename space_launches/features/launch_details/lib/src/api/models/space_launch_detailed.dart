import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:launch_details/src/api/models/launch_mission.dart';
import 'package:launch_status/launch_status.dart';

part 'space_launch_detailed.freezed.dart';
part 'space_launch_detailed.g.dart';

@freezed
class SpaceLaunchDetailed with _$SpaceLaunchDetailed {
  const factory SpaceLaunchDetailed({
    required String id,
    required String name,
    required String image,
    @JsonKey(name: 'window_start') required DateTime windowStart,
    @JsonKey(name: 'window_end') required DateTime windowEnd,
    LaunchStatus? status,
    LaunchMission? mission,
  }) = _SpaceLaunchDetailed;

  factory SpaceLaunchDetailed.fromJson(Map<String, dynamic> json) =>
      _$SpaceLaunchDetailedFromJson(json);
}
