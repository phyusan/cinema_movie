import 'package:cinema_movie/homepage/screen/Booking_page/BookingWidget/cinema_card.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: BookingApp('Booking List'),
        body: SafeArea(
            child: ListView.builder(
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return const CinemaShowMovieWidget();
          },
        )));
  }
}
