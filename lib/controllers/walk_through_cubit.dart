import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';



class WalkThroughCubit extends Cubit<int> {
  WalkThroughCubit(super.initialState);

getincrementindex ( {required state}){

  emit(state);
}

}
