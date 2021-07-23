import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:upcoming_launches/src/api/models/upcoming_launches.dart';

part 'upcoming_launches_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class UpcomingLaunchesApiService {
  @factoryMethod
  factory UpcomingLaunchesApiService(
    Dio dio, {
    @Named('baseUrl') String baseUrl,
  }) = _UpcomingLaunchesApiService;

  @GET('/launch/upcoming')
  Future<UpcomingLaunches> getUpcomingLaunches();
}
