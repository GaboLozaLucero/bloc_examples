import 'package:bloc_practice/constant/color.dart';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton(
      {super.key, required this.topWidget, required this.function, required this.title, required this.typeOfController});

  final Widget? topWidget;
  final VoidCallback? function;
  final String? title;
  final String? typeOfController;

  @override
  Widget build(BuildContext context) {
    double widthContainer = MediaQuery.of(context).size.width * 0.4;
    double heightContainer = MediaQuery.of(context).size.height * 0.22;
    return SizedBox(
      width: widthContainer,
      height: heightContainer,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            shadowColor: Colors.white,
            elevation: 10.0,
            padding: EdgeInsets.zero),
        child: Column(
          children: [
            SizedBox(
              height: heightContainer * 0.5,
              child: topWidget,
            ),
            SizedBox(
              width: widthContainer,
              height: heightContainer * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "$title",
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                  ),
                  Container(
                    width: widthContainer * 0.4,
                    height: heightContainer * 0.15,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: blackBackground),
                    child: Center(
                      child: Text(
                        "#$typeOfController",
                        style: const TextStyle(
                          fontSize: 12.0,
                          color: white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
