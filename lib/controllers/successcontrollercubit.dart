import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class successcontroller extends Cubit<bool> {
  successcontroller(super.initialState);

boolcheck({required state })
{
  emit(state);
}

}
