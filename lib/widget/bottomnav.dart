import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1F2937),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 10),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: 100,
          height: 50,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20))),
          child: Container(
              width: 50,
              height: 40,
              decoration: BoxDecoration(
                  color: kboxColor, borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Text('Buy Tickets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w400)))),
        ),
      ),
    );
  }
}
