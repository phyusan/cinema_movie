import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';

class SeatnumberWidget extends StatelessWidget {
  const SeatnumberWidget({
    super.key,
    required this.id,
    required this.seatnumber,
  });
  final String id;
  final String seatnumber;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Stack(
        children: [
          Text(id,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                  color: kTextColorThree)),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(seatnumber,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: kTextColorThree)),
          ),
          const Align(
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
          const Padding(
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
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
