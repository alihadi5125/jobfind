import 'package:bloc/bloc.dart';

class IntroductionPageViewCubit extends Cubit<int> {
  IntroductionPageViewCubit(int initialState) : super(0);
  setIndex({required index}){
    emit(index);
  }
}
