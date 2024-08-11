import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'feature_state.dart';

class FeatureCubit extends Cubit<FeatureState> {
  FeatureCubit() : super(FeatureInitial());

  // static FeatureCubit get (context){
  //   return BlocProvider.of<FeatureCubit>(context);
  // }
   int counter = 0;
void add() {
    counter++;
    emit(FeatureIncreaseNumber(counter: counter));
  }
}
