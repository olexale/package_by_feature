import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:upcoming_launches/src/di/injection.config.dart';

@injectableInit
void configureDI(GetIt getIt, {String? environment}) =>
    $initGetIt(getIt, environment: environment);
