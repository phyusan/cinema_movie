import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/call_service_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/movie_card.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/seat_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/services_text_widget.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:flutter/material.dart';

import 'widgets/expire_card_widget.dart';
import 'widgets/threater_widget.dart';

class ExpireBooking extends StatelessWidget {
  const ExpireBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BookingApp('Transformer: Rise of the Beasts', context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const ExpireCardWidget(),
              const Divider(),
              const MovingCardWidget(),
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
                        SeatnumberWidget(
                          id: '01',
                          seatnumber: 'A04',
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 60),
                          child: SeatnumberWidget(
                            id: '02',
                            seatnumber: 'A05',
                          ),
                        )
                      ],
                    )),
              ),
              Container(
                color: Colors.white60,
                child: const Padding(
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
