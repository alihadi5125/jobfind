import 'package:bloc/bloc.dart';

class SignupSecurePasswordEnterCubit extends Cubit<bool> {
  SignupSecurePasswordEnterCubit(bool initialState) : super(false);
  setSuffixText({required secureText}){
    emit(secureText);
  }
}
