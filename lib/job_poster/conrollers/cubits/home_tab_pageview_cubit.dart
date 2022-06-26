import 'package:bloc/bloc.dart';

class HomeTabPageviewCubit extends Cubit<int> {
  HomeTabPageviewCubit(int initialState) : super(0);
  setIndex({required pageIndex}){
    emit(pageIndex);
  }
}
