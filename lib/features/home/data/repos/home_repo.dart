import 'package:appointments_app/core/networking/api_error_handaler.dart';
import 'package:appointments_app/core/networking/api_result.dart';
import 'package:appointments_app/features/home/data/apis/home_apis_services.dart';
import 'package:appointments_app/features/home/data/models/specializations_response_model.dart';

class HomeRepo{
  HomeApiService _homeApiService ;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>>
  getSpecializations()async{
    try{
      final response = await _homeApiService.getSpecializations();
      return ApiResult.success(response);
    }catch(e){
      return  ApiResult.failure(ErrorHandler.handle(e));
    }

  }
}