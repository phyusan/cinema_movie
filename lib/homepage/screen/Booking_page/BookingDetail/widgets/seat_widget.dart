import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';

class SeatnumberWidget extends StatelessWidget {
  const SeatnumberWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          Text('01',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: kTextColorThree)),
          Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text('A04',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: kTextColorThree)),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10),
              child: Text('11500 MMK',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: kTextColorThree)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text('-Remove',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: kboxColor)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
