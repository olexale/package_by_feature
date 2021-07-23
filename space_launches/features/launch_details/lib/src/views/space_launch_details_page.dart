import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:launch_details/src/api/models/space_launch_detailed.dart';
import 'package:launch_details/src/api/service/launch_details_api_service.dart';
import 'package:launch_status/launch_status.dart';
import 'package:space_launch_theme/space_launch_theme.dart';

class SpaceLaunchDetailsPage extends StatelessWidget {
  const SpaceLaunchDetailsPage(
      {Key? key, @PathParam('id') required this.spaceLaunchId})
      : super(key: key);

  final String spaceLaunchId;

  @override
  Widget build(BuildContext context) => FutureBuilder<SpaceLaunchDetailed>(
        future: GetIt.instance<LaunchDetailsApiService>()
            .getUpcomingLaunch(spaceLaunchId),
        builder: (context, snapshot) {
          if (snapshot.hasError) return Error(error: snapshot.error!);
          if (!snapshot.hasData) return const Loading();
          final spaceLaunch = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text(spaceLaunch.name),
              actions: [
                if (spaceLaunch.status != null)
                  LaunchStatusWidget(status: spaceLaunch.status!)
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    spaceLaunch.image,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('⏱ Start ${snapshot.data!.windowStart}'),
                        Text('⏱ End ${snapshot.data!.windowEnd}'),
                        if (snapshot.data!.mission != null) ...[
                          Text('🎯 Mission: ${snapshot.data!.mission!.name}'),
                          Text('${snapshot.data!.mission!.description}'),
                        ]
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      );
}
