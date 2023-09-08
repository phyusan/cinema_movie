import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/services_text_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../const.dart';

class ExpireCardWidget extends StatelessWidget {
  const ExpireCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 230,
        color: Colors.white60,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Text('Your Booking Code',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color: kTextColorThree)),
              const Text('TROTBA0305',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: kTextColorThree)),
              const Text('Please use this booking code to buy JCGV ticket',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: kTextColorThree)),
              Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, top: 15, bottom: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: kboxColor),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Your booking will expire in',
                            softWrap: true,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: kTextColorOne)),
                        SizedBox(width: 10),
                        Text('30m 20s',
                            softWrap: true,
                            maxLines: 1,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: kTextColorOne)),
                      ],
                    ),
                  )),

              //time
              const TimeTextWidget(
                text1: 'Book At',
                text2: '9 Jun 2023 8:15 AM',
              ),
              const SizedBox(height: 5),
              const TimeTextWidget(
                text1: 'Booking Expiry Time',
                text2: '9 Jun 2023 12:00 AM',
              ),
            ],
          ),
        ));
  }
}
