

import 'package:appointments_app/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';
@freezed
 class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial ;

  const factory HomeState.specializationLoading() =SpecializationLoading ;
  const factory HomeState.specializationSuccess
      (SpecializationsResponseModel model) = SpecializationSuccess ;
  const factory HomeState.specializationError(String message) = SpecializationError ;
}


