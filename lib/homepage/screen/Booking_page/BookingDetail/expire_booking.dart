import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/ticket.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:flutter/material.dart';

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

class ServicesTextWidget extends StatelessWidget {
  const ServicesTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.only(left: 10, top: 15, bottom: 20),
        child: Column(
          children: [
            Text('Terms of Services',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: kTextColorThree)),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Text(
                  '  Fusce volutpat euismod et pretium id, volutpat et tortor. In vulputate lorem quis dui vestibulum, vitae imperdiet diam bibendum. ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kTextColorThree)),
            ),
            //2sentence
            Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Text(
                  '  Nunc sapien diam, euismod et pretium id, volutpat et tortor. In vulputate lorem quis dui vestibulum, vitae imperdiet diam bibendum. ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kTextColorThree)),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10, left: 5),
              child: Text(
                  ' In vitae scelerisque augue, in varius eros. Nunc sapien diam, euismod et pretium id, volutpat et tortor. In vulputate lorem quis dui vestibulum, vitae imperdiet diam bibendum. ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: kTextColorThree)),
            ),
          ],
        ),
      ),
    );
  }
}

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

class ThreaterWidget extends StatelessWidget {
  const ThreaterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('THEATRE',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: kTextColorThree)),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text('Cine & Forte',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: kTextColorThree)),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceWidget extends StatelessWidget {
  const PlaceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cinema',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: kTextColorThree)),
            Text('Junctin City',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: kTextColorThree)),
            Text(
                'Level 5, Junction City,Corner of, Bo Gyoke Rd, Yangon, Myanmar (Burma)',
                softWrap: true,
                maxLines: 3,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: kTextColorThree)),
          ],
        ),
      ),
    );
  }
}

class TimeTextWidget extends StatelessWidget {
  const TimeTextWidget({
    super.key,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text1,
            softWrap: true,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff64748B))),
        const SizedBox(width: 10),
        Text(text2,
            softWrap: true,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff0F172A))),
      ],
    );
  }
}
