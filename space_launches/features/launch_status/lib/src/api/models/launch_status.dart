import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_status.freezed.dart';
part 'launch_status.g.dart';

@freezed
class LaunchStatus with _$LaunchStatus {
  const factory LaunchStatus({
    required String name,
  }) = _LaunchStatus;

  factory LaunchStatus.fromJson(Map<String, dynamic> json) =>
      _$LaunchStatusFromJson(json);
}
