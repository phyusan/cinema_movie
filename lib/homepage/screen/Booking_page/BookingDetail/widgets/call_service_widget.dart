import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/ticket.dart';
import 'package:flutter/material.dart';

class CallServiceWidget extends StatelessWidget {
  const CallServiceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            const Text('yammobots  logo',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color(0xff2563EB),
                  fontSize: 25,
                )),
            const Text('Call us for more help',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: kTextColorThree,
                  fontSize: 15,
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ticket()),
                );
              },
              child: Container(
                  margin: const EdgeInsets.only(
                      left: 50, right: 50, top: 30, bottom: 40),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff2563EB)),
                  child: const Center(
                      child: Text('Technical Phone',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18)))),
            )
          ],
        ));
  }
}
