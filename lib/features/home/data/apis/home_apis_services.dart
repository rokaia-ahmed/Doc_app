import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../core/networking/api_constants.dart';
import '../models/specializations_response_model.dart';
import 'home_api_constants.dart';

part 'home_apis_services.g.dart';

@RestApi(baseUrl: ApiConstant.apiBaseUrl)
abstract class HomeApiService{
  factory HomeApiService(Dio dio)= _HomeApiService;
  @GET(HomeApiConstants.specializationEP)
 Future<SpecializationsResponseModel> getSpecializations();
}