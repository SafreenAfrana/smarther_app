// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget bottomNavigationWidget(
    BuildContext context, int currentIndex, onTabTapped) {
  return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedIconTheme: IconThemeData(
        color: Colors.deepPurple[700],
      ),
      showSelectedLabels: true,
      selectedItemColor: Colors.deepPurple[700],
      selectedLabelStyle: TextStyle(
        color: Colors.deepPurple[700],
      ),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: ("Home")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            label: ("Categories")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
            ),
            label: ("Notifications")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: ("Account")),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: ("Cart")),
      ],
      onTap: onTabTapped);
}
