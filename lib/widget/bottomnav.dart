import 'package:flutter/material.dart';

BottomNavigationBar CustomBottomNavigation() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.call),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.camera),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.chat),
      ),
    ],
  );
}
