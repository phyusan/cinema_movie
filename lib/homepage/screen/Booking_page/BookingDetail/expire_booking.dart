import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/call_service_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/seat_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/services_text_widget.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:flutter/material.dart';

import 'widgets/threater_widget.dart';

class ExpireBooking extends StatelessWidget {
  const ExpireBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BookingApp('Transformer: Rise of the Beasts'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: 230,
                  color: Colors.grey.shade100,
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
                        const Text(
                            'Please use this booking code to buy JCGV ticket',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                  )),
              //Common Widget

              Container(
                height: 150,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                      ),
                      width: 115,
                      height: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const Image(
                            image: NetworkImage(
                                "https://kktstroage.azureedge.net/yammo/movie/940_MOVIE_PHOTO_e87707db-1bd1-45f2-953d-b1a4ea298cf5.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(
                        width: 225,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Transformers: Rise of the Beasts',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff0F172A))),
                              SizedBox(height: 5),
                              Text('Action Movie . 2023',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0F172A))),
                              SizedBox(height: 5),
                              Text('2 hr 7 min',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0F172A))),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
              const Divider(),
              const PlaceWidget(),
              const Divider(),
              const ThreaterWidget(),
              const Divider(),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 10),
                child: SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Text('SEAT NUMBERS',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: kTextColorThree)),
                        SeatnumberWidget(),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: SeatnumberWidget(),
                        )
                      ],
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tickets Fees(total)',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: kTextColorThree)),
                    Text('23000 MMK',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: kTextColorThree)),
                  ],
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(30),
                child: Image(
                    image: AssetImage(
                  jcgvlogo,
                )),
              ),
              //Terms of Services
              const ServicesTextWidget(),

              const CallServiceWidget()
            ],
          ),
        ));
  }
}
