import 'package:cinema_movie/homepage/screen/Booking_page/BookingWidget/cinema_text.dart';
import 'package:flutter/material.dart';

import '../../../../const.dart';

class CinemaShowMovieWidget extends StatelessWidget {
  const CinemaShowMovieWidget({
    super.key,
    required this.bookingtext,
    required this.timetext,
    required this.changeColor,
    this.pressOnSeeMore,
  });
  final String bookingtext;
  final String timetext;
  final bool changeColor;
  final GestureTapCallback? pressOnSeeMore;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: pressOnSeeMore,
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(bookingtext,
                          softWrap: true,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff64748B))),
                    ),
                    const SizedBox(width: 20),
                    Text(timetext,
                        softWrap: true,
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: changeColor ? kboxColor : Colors.green)),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
