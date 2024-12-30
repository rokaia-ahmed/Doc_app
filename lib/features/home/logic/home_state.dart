

import 'package:appointments_app/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/networking/api_error_handaler.dart';

part 'home_state.freezed.dart';
@freezed
 class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial ;

  const factory HomeState.specializationLoading() =SpecializationLoading ;
  const factory HomeState.specializationSuccess
      (List<SpecializationsData?>? specializationDataList) = SpecializationSuccess ;
  const factory HomeState.specializationError(String message) = SpecializationError ;

  // Doctors
  const factory HomeState.doctorsSuccess(List<Doctors?>? doctorsList) = DoctorsSuccess;
  const factory HomeState.doctorsError(ErrorHandler errorHandler) =
  DoctorsError;
}


