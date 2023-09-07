import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';

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
