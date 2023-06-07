import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent{event_incement, event_decrement, event_reset}

class CounterBloc extends Bloc<CounterEvent, VoidCallback>{
  CounterBloc(super.initialState);


}