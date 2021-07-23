import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:launch_status/launch_status.dart';
import 'package:upcoming_launches/src/api/models/space_launch_short.dart';

class LaunchTile extends StatelessWidget {
  const LaunchTile({Key? key, required this.spaceLaunch}) : super(key: key);

  final SpaceLaunchShort spaceLaunch;

  @override
  Widget build(BuildContext context) => ListTile(
        leading: Image.network(
          spaceLaunch.image,
          width: 60,
          fit: BoxFit.contain,
        ),
        title: Text(spaceLaunch.name),
        subtitle: Text('⏱ ${spaceLaunch.windowStart}'),
        trailing: spaceLaunch.status != null
            ? LaunchStatusWidget(status: spaceLaunch.status!)
            : null,
        onTap: () {
          context.router
              .pushPath('/space-launch-details-page/${spaceLaunch.id}');
        },
      );
}
