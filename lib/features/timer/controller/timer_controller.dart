import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_practice/features/timer/ticker.dart';
import 'package:equatable/equatable.dart';

part 'timer_state.dart';
part 'timer_event.dart';

class TimerController extends Bloc<TimerEvent, TimerState>{
  static const int duration = 60;
  final Ticker _ticker;
  StreamSubscription<int>? _tickerSubscription;// use dart:async

  TimerController({required Ticker ticker})
      : _ticker = ticker,
        super(const TimerInitial(duration)) {
    on<TimerStarted>(_onStarted);
    on<TimerPaused>(_onPaused);
    on<TimerResumed>(_onResumed);
    on<TimerReset>(_onReset);
    on<_TimerTicked>(_onTicked);
  }

  @override
  Future<void> close() {
    _tickerSubscription?.cancel();
    return super.close();
  }

  void _onStarted(TimerStarted event, Emitter<TimerState> emitter) {
    emit(TimerRunInProgress(event.duration));
    _tickerSubscription?.cancel();
    _tickerSubscription = _ticker.tick(ticks: event.duration).listen((duration) => add(_TimerTicked(duration: duration)));
  }

  void _onPaused(TimerPaused event, Emitter<TimerState> emitter) {
    if (state is TimerRunInProgress) {
      _tickerSubscription?.pause();
      emit(TimerRunPause(state.duration));
    }
  }

  void _onResumed(TimerResumed event, Emitter<TimerState> emitter) {
    if (state is TimerRunPause) {
      _tickerSubscription?.resume();
      emit(TimerRunInProgress(state.duration));
    }
  }

  void _onReset(TimerReset event, Emitter<TimerState> emitter){
    _tickerSubscription?.cancel();
    emit(const TimerInitial(duration));
  }

  void _onTicked(_TimerTicked event, Emitter<TimerState> emitter) {
    emit(event.duration > 0 ? TimerRunInProgress(event.duration) : TimerRunComplete());
  }
}