import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class dashboardpageCubit extends Cubit<int> {
  dashboardpageCubit(super.initialState);

  getincrementindex ( {required state}){

    emit(state);
  }

}