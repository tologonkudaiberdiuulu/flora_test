import 'package:bloc/bloc.dart';

abstract class ChooseEvent {}

class PeriodChoose extends ChooseEvent {}

class PregnantChoose extends ChooseEvent {}

class ChooseBloc extends Bloc<ChooseEvent, String> {
  ChooseBloc() : super('Track my period') {
    on<PeriodChoose>((event, emit) => emit('Track my period'));
    on<PregnantChoose>((event, emit) => emit('Get pregnant'));
  }
}
