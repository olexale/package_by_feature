import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:launch_details/src/api/models/space_launch_detailed.dart';

part 'launch_details_api_service.g.dart';

@lazySingleton
@RestApi()
abstract class LaunchDetailsApiService {
  @factoryMethod
  factory LaunchDetailsApiService(
    Dio dio, {
    @Named('baseUrl') String baseUrl,
  }) = _LaunchDetailsApiService;

  @GET('/launch/{id}')
  Future<SpaceLaunchDetailed> getUpcomingLaunch(
    @Path("id") String id,
  );
}
