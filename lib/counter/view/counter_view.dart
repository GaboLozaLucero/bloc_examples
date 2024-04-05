import 'package:bloc_practice/constant/widgets/custom_app_bar.dart';
import 'package:bloc_practice/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Counter",),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BlocBuilder<CounterCubit, int>(builder: (context, state){
            return Text("$state");
          } ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                context.read<CounterCubit>().increment();
              }, child: const Icon(Icons.add),),
              ElevatedButton(onPressed: (){
                context.read<CounterCubit>().decrement();
              }, child: const Icon(Icons.remove),),
            ],
          ),
        ],
      ),
    );
  }
}
