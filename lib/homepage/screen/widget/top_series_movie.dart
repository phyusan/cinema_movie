//topSeries Movie Widget
import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopSeriesWidget extends StatefulWidget {
  const TopSeriesWidget({
    super.key,
  });

  @override
  State<TopSeriesWidget> createState() => _TopSeriesWidgetState();
}

class _TopSeriesWidgetState extends State<TopSeriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: kboxColor),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextRowWidget(
              Text1: 'Top Series',
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 400,
              height: 280,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 150,
                            height: 200,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: const Image(
                                  image:
                                      AssetImage('assets/svg/japan food1.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          const SizedBox(height: 5),
                          SvgPicture.asset(ratingphoto),
                          const SizedBox(height: 5),
                          const Text('Baby Movie',
                              softWrap: true,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 18,
                                color: kTextColorOne,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Product Sans',
                              )),
                          const Text('Cartoon',
                              style: TextStyle(
                                fontSize: 13,
                                color: kTextColorTwo,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Product Sans',
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
