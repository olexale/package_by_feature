import 'package:flutter/material.dart';
import 'package:launch_status/src/api/models/launch_status.dart';

class LaunchStatusWidget extends StatelessWidget {
  const LaunchStatusWidget({Key? key, required this.status}) : super(key: key);

  final LaunchStatus status;

  static const _statuses = <String, String>{
    'Success': '🚀',
    'Go': '🟢',
    'TBD': '🟡',
  };

  @override
  Widget build(BuildContext context) => SizedBox(
        height: kMinInteractiveDimension,
        width: kMinInteractiveDimension,
        child: Center(
          child: Text(
            _statuses[status.name] ?? '',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
}
