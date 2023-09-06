import 'package:cinema_movie/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 130,
          backgroundColor: kSecondaryColor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SvgPicture.asset(logophoto, width: 100),
          ),
          actions: [SvgPicture.asset(settingphoto, color: Colors.green)],
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
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 20),
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
          )),
    );
  }
}
