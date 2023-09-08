import 'package:cinema_movie/const.dart';
import 'package:cinema_movie/homepage/screen/Booking_page/booking_page.dart';
import 'package:cinema_movie/homepage/screen/Home_page/homepage.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ClipRRect(
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.white,
            selectedItemColor: kboxColor,
            elevation: 100,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kSecondaryColor,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  // Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                  label: "Home"),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.book,
                  ),
                  label: "Booking"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person,
                      color: _selectedIndex == 2 ? kboxColor : Colors.white),
                  // Icon(Icons.home, size: _selectedIndex == 0 ? 30 : 20),
                  label: "Favourite"),
            ],
          ),
        ),
        body: bottomNavBarItems(_selectedIndex));
  }

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  Widget bottomNavBarItems(int index) {
    if (index == 0) {
      return const Homepage();
    } else if (index == 1) {
      return const BookingPage();
    } else {
      return Container(
        color: kSecondaryColor,
      );
    }
  }
}
