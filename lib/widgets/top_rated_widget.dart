// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smarther_app/shared/common.dart';

Widget topRatedWidget(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.deepPurple[50],
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      // ignore: prefer_const_literals_to_create_immutables

      Text(
        "Best Quality",
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
        height: 500.0,
        child: GridView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 10),
          scrollDirection: Axis.horizontal,
          itemCount: recentViewList.length,
          itemBuilder: (context, index) {
            return Container(
              // width: 70,
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
                        color: Colors.black,
                        letterSpacing: 1),
                  ),
                  Text(
                    "Buy Now",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.green,
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
