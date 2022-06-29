import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class newspageCubit extends Cubit<int> {
  newspageCubit(super.initialState);

  getincrementindex ( {required state}){

    emit(state);
  }

}
