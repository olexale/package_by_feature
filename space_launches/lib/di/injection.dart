import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:space_launches/di/injection.config.dart';

import 'package:launch_details/launch_details.dart' as launch_details;
import 'package:upcoming_launches/upcoming_launches.dart' as upcoming_launches;

final getIt = GetIt.instance;

@injectableInit
void configureDI({String? environment}) {
  getIt.allowReassignment = true;
  launch_details.configureDI(getIt);
  upcoming_launches.configureDI(getIt);
  $initGetIt(getIt, environment: environment);
}
