import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/expire_booking.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/call_service_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/services_text_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/threater_widget.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/ticket_widget.dart';
import 'package:cinema_movie/widget/appbarmovie.dart';
import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BookingApp('Ticket Information'),
        body: SingleChildScrollView(
          child: Column(
            children: [
              PaymentCardWidget(),
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
              const SeatNumberWidget(),
              const Divider(),

              const FeeWidget(
                TaxFee: '3',
                Taxtitle: 'Ticket Quantity',
              ),
              const FeeWidget(
                TaxFee: '1000 MMK',
                Taxtitle: 'Service Fee',
              ),
              const FeeWidget(
                TaxFee: '500 MMK',
                Taxtitle: 'Tax inclusive',
              ),
              const FeeWidget(
                TaxFee: '38000 MMK',
                Taxtitle: 'Net Amount',
              ),
              const FeeWidget(
                TaxFee: '38000 MMK',
                Taxtitle: 'Paid Amount',
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
