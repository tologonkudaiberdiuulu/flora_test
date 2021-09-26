import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './date_event.dart';

class DateBloc extends Bloc<DateEvent, int> {
  DateBloc() : super(1994) {
    on<ChangeDateEvent>((event, emit) => emit(event.index));
    on<ResetDateEvent>((event, emit) => emit(1994));
  }
}
