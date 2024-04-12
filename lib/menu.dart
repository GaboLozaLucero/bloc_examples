import 'package:bloc_practice/constant/color.dart';
import 'package:bloc_practice/constant/widgets/custom_app_bar.dart';
import 'package:bloc_practice/constant/widgets/menu_button.dart';
import 'package:bloc_practice/features/counter/counter.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    double widthContainer = MediaQuery.of(context).size.width * 0.4;
    double heightContainer = MediaQuery.of(context).size.height * 0.22;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFFEF9FD),
      appBar: const CustomAppBar(
        title: "Bloc examples",
        leading: Icon(
          Icons.home_outlined,
          color: white,
          size: 30.0,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MenuButton(
                    topWidget: Container(
                      width: widthContainer,
                      height: heightContainer * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [const Color(0xFFE278D8).withOpacity(0.7), const Color(0xFFFA5D5D).withOpacity(0.9)],
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: widthContainer * 0.2,
                            height: heightContainer * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xFFF05B72),
                            ),
                            child: const Icon(
                              Icons.remove,
                              color: white,
                            ),
                          ),
                          const Text(
                            "15",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: white,
                            ),
                          ),
                          Container(
                            width: widthContainer * 0.2,
                            height: heightContainer * 0.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color(0xFF95CDAC),
                            ),
                            child: const Icon(
                              Icons.add,
                              color: white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    function: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const CounterPage()));
                    },
                    title: "Counter",
                    typeOfController: "Cubit"),
                MenuButton(
                    topWidget: Container(
                      width: widthContainer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: timer,
                      ),
                      child: const Center(
                        child: Text(
                          "60",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: white,
                          ),
                        ),
                      ),
                    ),
                    function: () {},
                    title: "Timer",
                    typeOfController: "Bloc"),
              ],
            ),
            SizedBox(height: heightContainer * 0.1),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     MenuButton(topWidget: SizedBox(), function: () {}, title: "Test", typeOfController: "GetX"),
            //     MenuButton(topWidget: SizedBox(), function: () {}, title: "Test", typeOfController: "GetX"),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
