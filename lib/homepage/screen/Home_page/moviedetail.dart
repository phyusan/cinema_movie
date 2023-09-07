import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/model/movie_list_model.dart';

import 'package:cinema_movie/widget/textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key, required this.detmov});
  final MovieList? detmov;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xff1F2937),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            width: 100,
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20), right: Radius.circular(20))),
            child: Container(
                width: 50,
                height: 40,
                decoration: BoxDecoration(
                    color: kboxColor, borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text('Buy Tickets',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w400)))),
          ),
        ),
      ),
      body: Container(
          color: kSecondaryColor,
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    const SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(20)),
                          child: Image(
                              image: AssetImage('assets/svg/japan food1.png'),
                              fit: BoxFit.cover),
                        )),
                    Padding(
                        padding: const EdgeInsets.only(left: 15, top: 40),
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.arrow_back_ios,
                                      color: Colors.black)),
                            ))),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 40, right: 20, left: 320),
                        child: SvgPicture.asset(savephoto)),
                    Padding(
                        padding: const EdgeInsets.only(
                            top: 40, right: 20, left: 350),
                        child: SvgPicture.asset(sharephoto))
                  ],
                ),

                //Text column
                const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text('Cartoon Movies',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            color: kTextColorOne,
                            fontWeight: FontWeight.w700))),

                //movie type
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Avator Movie Subject   2022',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Color(0xffF9FAFB),
                            fontWeight: FontWeight.w400))),

                //rating
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: SvgPicture.asset(ratingphoto)),

                //detail text
                const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                        'Jake Sully lives with his newfound family formed on the extrasolar moon Pandora. Once a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Navi race to protect their home.',
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Color(0xffD1D5DB),
                            fontWeight: FontWeight.w400))),

                //Cast
                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: TextColumnWidget(
                    LargeText: 'Cast',
                    SmallText:
                        'Zoe Saldaña, Sam Worthington, Sigourney Weaver, Stephen Lang, Cliff Curtis, Joel David Moore, CCH Pounder, Edie Falco, Jemaine Clement, Kate Winslet',
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: TextColumnWidget(
                    LargeText: 'Directed By',
                    SmallText: 'James Cameron',
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: TextColumnWidget(
                    LargeText: 'Produced By',
                    SmallText: 'James Cameron, Jon Landau',
                  ),
                ),

                //runtime

                const Padding(
                  padding: EdgeInsets.only(bottom: 10, top: 10),
                  child: TextColumnWidget(
                    LargeText: 'Run Time',
                    SmallText: '2 hours 15 mins',
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

late final MovieList? detmov;
