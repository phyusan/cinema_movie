import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/BookingDetail/widgets/services_text_widget.dart';
import 'package:flutter/material.dart';

class PaymentCardWidget extends StatelessWidget {
  const PaymentCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 320,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 110,
                color: const Color(0xff10B981),
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Payment code',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300)),
                          Text('912343546',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 15,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: 15,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15))),
                      ),
                    )
                  ],
                )),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TimeTextWidget(
                text1: 'Slip No',
                text2: '92243434343',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: TimeTextWidget(
                text1: 'Casher',
                text2: 'Kyaw Kyaw',
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: TimeTextWidget(
                text1: 'Sales Date',
                text2: '9 Jun 2023 8:15 AM',
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 70, right: 70),
                child: const IconWidget(iconphoto: totallogo))
          ],
        ));
  }
}

class FeeWidget extends StatelessWidget {
  const FeeWidget({
    super.key,
    required this.Taxtitle,
    required this.TaxFee,
  });
  final String Taxtitle;
  final String TaxFee;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(Taxtitle,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: kTextColorThree)),
          Text(TaxFee,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: kTextColorThree)),
        ],
      ),
    );
  }
}

class SeatNumberWidget extends StatelessWidget {
  const SeatNumberWidget({
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
            Text('Seat Numbers',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: kTextColorThree)),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text('A04  A05  A06',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: kTextColorThree)),
            ),
          ],
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  const IconWidget({
    super.key,
    required this.iconphoto,
  });
  final String iconphoto;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
        top: 5,
      ),
      width: 200,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(image: AssetImage(iconphoto), fit: BoxFit.cover),
      ),
    );
  }
}
