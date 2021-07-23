import 'package:flutter/material.dart';
import 'package:upcoming_launches/src/api/models/space_launch_short.dart';
import 'package:upcoming_launches/src/views/launch_tile.dart';

class LaunchesList extends StatelessWidget {
  const LaunchesList({Key? key, required this.launches}) : super(key: key);

  final List<SpaceLaunchShort> launches;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemBuilder: (context, index) =>
            LaunchTile(spaceLaunch: launches[index]),
        separatorBuilder: (context, index) => Divider(),
        itemCount: launches.length,
      );
}
