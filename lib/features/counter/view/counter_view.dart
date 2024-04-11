import 'package:bloc_practice/constant/color.dart';
import 'package:bloc_practice/constant/widgets/custom_app_bar.dart';
import 'package:bloc_practice/features/counter/counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Counter",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BlocBuilder<CounterCubit, int>(builder: (context, state) {
              return Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: borderContainer, width: 2.0),
                  ),
                  child: Center(
                      child: Text(
                    "$state",
                    style: const TextStyle(fontSize: 65.0, color: black, fontWeight: FontWeight.bold),
                  )));
            }),
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().decrement();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFF05B72),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.zero),
                        child: const Icon(
                          Icons.remove,
                          color: Color(0xFFF5F5F7),
                          size: 70.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: ElevatedButton(
                        onPressed: () {
                          context.read<CounterCubit>().increment();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF95CDAC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.zero),
                        child: const Icon(
                          Icons.add,
                          color: Color(0xFFF5F5F7),
                          size: 70.0,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<CounterCubit>().reset();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFEDB80),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.zero),
                    child: const Icon(
                      Icons.lock_reset,
                      color: Color(0xFFF5F5F7),
                      size: 50.0,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
