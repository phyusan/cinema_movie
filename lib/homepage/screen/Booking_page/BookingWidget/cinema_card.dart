import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/expire_booking.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingWidget/cinema_text.dart';
import 'package:flutter/material.dart';

import '../../../../const.dart';

class CinemaShowMovieWidget extends StatelessWidget {
  const CinemaShowMovieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: () {
          print('click');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ExpireBooking()),
          );
        },
        child: Container(
            width: double.infinity,
            height: 250,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 10,
                      ),
                      width: 125,
                      height: 160,
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
                            children: [
                              Text('Transformers: Rise of the Beasts',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff0F172A))),
                              TextCinemaRowWidget(
                                  icon: cinemaphoto, text: 'JCGV Juntion City'),
                              TextCinemaRowWidget(
                                  icon: seatphoto, text: 'A04 , A05'),
                              TextCinemaRowWidget(
                                  icon: calendar,
                                  text: '9:30 AM -12 June 2023'),
                            ],
                          ),
                        )),
                  ],
                ),
                const Divider(),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Your booking will expire in',
                          softWrap: true,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff64748B))),
                    ),
                    SizedBox(width: 10),
                    Text('30m 20s',
                        softWrap: true,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: kboxColor)),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
