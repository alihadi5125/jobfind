import 'package:bloc/bloc.dart';

class LoginSecurePasswordCubit extends Cubit<bool> {
  LoginSecurePasswordCubit(bool initialState) : super(false);
  setSuffixText({required secureText}){
    emit(secureText);
  }
}
