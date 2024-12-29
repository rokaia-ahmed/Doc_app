import 'package:appointments_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/widgets.dart';

import '../../../core/helpers/constants.dart';
import '../../../core/helpers/shared_prefs_helper.dart';
import '../../../core/networking/dio_factory.dart';
import '../data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitLoginState( )async{
    emit(LoginState.loading());
    final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text,
        password: passwordController.text));

    response.when(
        success: (loginResponse)async{
          await saveUserToken(loginResponse.userData?.token ?? '');
          emit(LoginState.success(loginResponse));
        },
        failure: (error){
          emit(LoginState.error(error: error.apiErrorModel.message??''));
        });
  }
  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
