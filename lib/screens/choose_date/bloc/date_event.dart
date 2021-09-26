abstract class DateEvent {}

class InitialDateEvent extends DateEvent {}

class ChangeDateEvent extends DateEvent {
  final int index;
  ChangeDateEvent({required this.index});
}

class ResetDateEvent extends DateEvent {}
