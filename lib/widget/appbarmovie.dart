import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar BookingApp(String title) {
  return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color(0xff0F172A)),
      ));
}

AppBar appbarmovie() {
  return AppBar(
      toolbarHeight: 130,
      backgroundColor: kSecondaryColor,
      leading: SvgPicture.asset(
        logophoto,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              SvgPicture.asset(notiphoto),
              const SizedBox(width: 5),
              SvgPicture.asset(
                settingphoto,
              ),
            ],
          ),
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kSearchbarColor,
            ),
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Color(0xff9CA3AF)),
                prefixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                enabledBorder: const OutlineInputBorder(),
              ),
            ),
          ),
        ),
      ));
}
