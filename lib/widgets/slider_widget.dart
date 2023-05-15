import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:smarther_app/models/slider_model.dart';

Widget sliderWidget(BuildContext context, CarouselSliderController _sliderKey) {
  return Container(
    height: 200,
    child: CarouselSlider.builder(
      unlimitedMode: true,
      controller: _sliderKey,
      slideBuilder: (index) {
        return Container(
            width: double.infinity,
            // alignment: Alignment.center,
            // color: colors[index],
            child: Image(image: sliderList[index], fit: BoxFit.fill));
      },
      slideTransform: CubeTransform(),
      slideIndicator: CircularSlideIndicator(
        padding: EdgeInsets.only(bottom: 32),
        indicatorBorderColor: Colors.black,
      ),
      itemCount: sliderList.length,
      initialPage: 0,
      enableAutoSlider: true,
    ),
  );
}
