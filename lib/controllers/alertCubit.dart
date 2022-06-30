import 'package:bloc/bloc.dart';




class alertCubit extends Cubit<bool> {
  alertCubit(super.initialState);

  boolcheck({required state })
  {
    emit(state);
  }
}