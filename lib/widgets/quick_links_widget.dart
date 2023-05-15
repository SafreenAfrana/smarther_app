// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smarther_app/models/quick_link_model.dart';
import 'package:smarther_app/shared/common.dart';

Widget quickLinkWidget(BuildContext context) {
  return SizedBox(
      height: 100.0,
      width: double.infinity,
      child: GridView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: lists.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 350,
              childAspectRatio: 2 / 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0),
          itemBuilder: (BuildContext context, int index) {
            ListModel listItems = lists[index];
            return GestureDetector(
              onTap: () {
                listItems.onTap(context);
              },
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey.shade200,
                      child: Center(child: listItems.image),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Text(
                        listItems.text,
                        style:
                            const TextStyle(fontSize: 12, color: Colors.black),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ]),
            );
          }));
}
