import 'package:appointments_app/core/helpers/extentions.dart';
import 'package:appointments_app/features/home/data/repos/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/networking/api_error_handaler.dart';
import '../data/models/specializations_response_model.dart';
import 'home_state.dart';


class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo ;
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  List<SpecializationsData?>? specializationsList = [];

  void getSpecialization()async{
    emit(HomeState.specializationLoading());
    final response =await  _homeRepo.getSpecializations();
    response.when(
        success: (data){
          emit(HomeState.specializationSuccess(data));
        },
        failure: (error){
          emit(HomeState.specializationError(
              error.apiErrorModel.message??''));
        }
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctors?>? doctorsList =
    getDoctorsListBySpecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctorsList));
    } else {
      emit(HomeState.doctorsError(ErrorHandler.handle('No doctors found')));
    }
  }

  /// returns the list of doctors based on the specialization id
  getDoctorsListBySpecializationId(specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization?.id == specializationId)
        ?.doctorsList;
  }
}
