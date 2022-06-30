import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class signalCubit extends Cubit<int> {
  signalCubit(super.initialState);

  getincrementindex ( {required state}){

    emit(state);
  }

}