import 'package:appointments_app/features/login/data/models/login_request_body.dart';
import 'package:flutter/widgets.dart';

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
        success: (loginResponse){
          emit(LoginState.success(loginResponse));
        },
        failure: (error){
          emit(LoginState.error(error: error.apiErrorModel.message??''));
        });
  }
}
