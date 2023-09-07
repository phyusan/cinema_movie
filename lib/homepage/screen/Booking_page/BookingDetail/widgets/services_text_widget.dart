import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';

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
