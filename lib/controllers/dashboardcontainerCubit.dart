import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class dashboardcontainerCubit extends Cubit<bool> {
  dashboardcontainerCubit(super.initialState);

boolcheck({required state })
{
  emit(state);
}

}
