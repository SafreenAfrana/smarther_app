// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smarther_app/shared/common.dart';

Widget recentlyViewedWidget(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.grey[10],
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // ignore: prefer_const_literals_to_create_immutables

      Text(
        "Recently Viewed",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
            letterSpacing: 1),
      ),

      SizedBox(
        height: 10,
      ),

      SizedBox(
        height: 200.0,
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              childAspectRatio: 2.5 / 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0),
          scrollDirection: Axis.horizontal,
          itemCount: recentViewList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                          height: 150, child: recentViewList[index].image)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    recentViewList[index].text,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.grey,
                        letterSpacing: 1),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    ]),
  );
}
