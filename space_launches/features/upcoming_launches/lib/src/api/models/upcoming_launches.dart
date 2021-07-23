import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upcoming_launches/src/api/models/space_launch_short.dart';

part 'upcoming_launches.freezed.dart';
part 'upcoming_launches.g.dart';

@freezed
class UpcomingLaunches with _$UpcomingLaunches {
  const factory UpcomingLaunches({
    required List<SpaceLaunchShort> results,
  }) = _UpcomingLaunches;

  factory UpcomingLaunches.fromJson(Map<String, dynamic> json) =>
      _$UpcomingLaunchesFromJson(json);
}
