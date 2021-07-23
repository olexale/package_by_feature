import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_mission.freezed.dart';
part 'launch_mission.g.dart';

@freezed
class LaunchMission with _$LaunchMission {
  const factory LaunchMission({
    required String name,
    required String description,
  }) = _LaunchMission;

  factory LaunchMission.fromJson(Map<String, dynamic> json) =>
      _$LaunchMissionFromJson(json);
}
