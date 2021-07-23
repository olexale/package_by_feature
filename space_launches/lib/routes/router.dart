import 'package:auto_route/auto_route.dart';
import 'package:launch_details/launch_details.dart';
import 'package:upcoming_launches/upcoming_launches.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SpaceLaunchesListPage, initial: true),
    AutoRoute(
        page: SpaceLaunchDetailsPage, path: '/space-launch-details-page/:id'),
  ],
)
class $SpaceLaunchesRouter {}
