import 'package:bloc/bloc.dart';

class JobPosterDashboardPageviewCubit extends Cubit<int> {
  JobPosterDashboardPageviewCubit(int initialState) : super(0);
  setIndex({required pageIndex}){
    emit(pageIndex);
  }
}
