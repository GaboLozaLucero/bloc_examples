import 'package:bloc_practice/features/timer/controller/timer_controller.dart';
import 'package:bloc_practice/features/timer/ticker.dart';
import 'package:bloc_practice/features/timer/view/timer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_)=>TimerController(ticker: const Ticker()), child: const TimerView(),);
  }
}
