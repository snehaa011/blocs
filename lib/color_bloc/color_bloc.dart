import 'package:flutter/material.dart';
import 'package:test/counter_bloc/counter_event.dart';
import 'package:test/color_bloc/color_state.dart';
import 'package:bloc/bloc.dart';

class ColorBloc extends Bloc<CounterEvent,ColorState>{    //type of state is ColorState (we have to access int Color inside ColorState class)
  ColorBloc():super(ColorInitialState()){
    on<CounterIncrementEvent>((event, emit) {       //event handler- converts event into zero or more states
      emit(ColorIncrementState(Colors.green)); //state getter gets the current state
    });

    on<CounterDecrementEvent>((event,emit){
      emit(ColorDecrementState(Colors.red));
    });
  }
}

//blocs receive events and convert incoming events into outgoing states