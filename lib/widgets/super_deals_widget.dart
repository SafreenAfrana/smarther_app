// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smarther_app/models/quick_link_model.dart';
import 'package:smarther_app/shared/common.dart';

Widget superDealsWidget(BuildContext context) {
  return SizedBox(
      height: 160.0,
      width: double.infinity,
      child: GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: superDealslist.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 2.5 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemBuilder: (BuildContext context, int index) {
            ListModel listItems = superDealslist[index];
            return GestureDetector(
              onTap: () {
                listItems.onTap(context);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5, color: Color(0xFFB8AFAF))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            // color: Colors.blue[50],
                            height: 100,
                            width: double.infinity,
                            child: listItems.image,
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        listItems.text,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            color: Colors.grey,
                            letterSpacing: 1),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        listItems.text,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ]),
              ),
            );
          }));
}
