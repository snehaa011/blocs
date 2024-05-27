import 'package:test/counter_bloc/counter_event.dart';
import 'package:test/counter_bloc/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{    //type of state is CounterState (we have to access int counter inside CounterState class)
  CounterBloc():super(CounterInitialState()){
    on<CounterIncrementEvent>((event, emit) {       //event handler- converts event into zero or more states
      emit(CounterIncrementState(state.counter+1)); //state getter gets the current state
    });

    on<CounterDecrementEvent>((event,emit){
      emit(CounterDecrementState(state.counter-1));
    });
  }
}

//blocs receive events and convert incoming events into outgoing states