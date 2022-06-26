import 'package:bloc/bloc.dart';

class SignupSecurePasswordCubit extends Cubit<bool> {
  SignupSecurePasswordCubit(bool initialState) : super(true);
  setSuffixText({required secureText}){
    emit(secureText);
  }
}
