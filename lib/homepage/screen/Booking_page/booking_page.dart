import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/expire_booking.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/ticket.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingWidget/cinema_card.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: BookingApp('Booking List', context),
        body: SafeArea(
          child: Column(
            children: [
              CinemaShowMovieWidget(
                bookingtext: 'Your booking will expire in',
                timetext: '30m 20s',
                changeColor: true,
                pressOnSeeMore: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExpireBooking()),
                  );
                },
              ),
              CinemaShowMovieWidget(
                bookingtext: 'Ticket Payment code',
                timetext: '8432843019',
                changeColor: false,
                pressOnSeeMore: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ticket()),
                  );
                },
              )
            ],
          ),
        ));
  }
}
