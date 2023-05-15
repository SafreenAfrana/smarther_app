// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:smarther_app/widgets/bottom_navigation_widget.dart';
import 'package:smarther_app/widgets/quick_links_widget.dart';
import 'package:smarther_app/widgets/recently_viewed_widget.dart';
import 'package:smarther_app/widgets/search_bar_widget.dart';
import 'package:smarther_app/widgets/slider_widget.dart';
import 'package:smarther_app/widgets/super_deals_widget.dart';
import 'package:smarther_app/widgets/top_rated_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormBuilderState>();
  String searchtext = '';
  // bool _isPlaying = false;
  late CarouselSliderController _sliderKey;
  @override
  void initState() {
    super.initState();
    _sliderKey = CarouselSliderController();
  }

  int currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("SMARTHER",
            style: TextStyle(
                color: Color.fromARGB(255, 8, 58, 99),
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 1)),
        centerTitle: false,
      ),
      drawer: Drawer(),
      bottomNavigationBar:
          bottomNavigationWidget(context, currentIndex, onTabTapped),
      body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  searchBarWidget(context, formKey, searchtext),
                  SizedBox(
                    height: 10,
                  ),
                  sliderWidget(context, _sliderKey),
                  SizedBox(
                    height: 15,
                  ),
                  quickLinkWidget(context),
                  SizedBox(
                    height: 15,
                  ),
                  superDealsWidget(context),
                  SizedBox(
                    height: 15,
                  ),
                  recentlyViewedWidget(context),
                  SizedBox(
                    height: 15,
                  ),
                  topRatedWidget(context),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ))),
    );
  }
}
