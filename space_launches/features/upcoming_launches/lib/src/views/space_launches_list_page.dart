import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:space_launch_theme/space_launch_theme.dart';
import 'package:upcoming_launches/src/api/models/upcoming_launches.dart';
import 'package:upcoming_launches/src/views/launches_list.dart';
// import 'package:space_launches/di/injection.dart';
// import 'package:space_launches/features/space_launch_theme/views/loading.dart';
// import 'package:space_launches/features/space_launch_theme/views/error.dart'
//     as error;
// import 'package:space_launches/features/upcoming_launches/api/models/upcoming_launches.dart';
// import 'package:space_launches/features/upcoming_launches/api/service/upcoming_launches_api_service.dart';
// import 'package:space_launches/features/upcoming_launches/views/launches_list.dart';

import '../api/service/upcoming_launches_api_service.dart';

class SpaceLaunchesListPage extends StatelessWidget {
  const SpaceLaunchesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Space launches')),
        body: FutureBuilder<UpcomingLaunches>(
          future: GetIt.instance<UpcomingLaunchesApiService>()
              .getUpcomingLaunches(),
          builder: (context, snapshot) => snapshot.hasData
              ? LaunchesList(launches: snapshot.data!.results)
              : snapshot.hasError
                  ? Error(error: snapshot.error!)
                  : const Loading(),
        ),
      );
}
