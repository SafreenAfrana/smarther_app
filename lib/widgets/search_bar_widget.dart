// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

Widget searchBarWidget(BuildContext context,
    GlobalKey<FormBuilderState> formKey, String searchtext) {
  return Row(
    children: [
      Text("Brand Mall"),
      SizedBox(
        width: 10,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 40,
        color: Colors.white,
        child: FormBuilder(
          key: formKey,
          child: FormBuilderTextField(
            name: 'Search',
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                labelText: "Search for Products",
                prefixIcon: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                suffixIcon: Wrap(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.mic_rounded,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                )),
            onChanged: (newValue) {
              searchtext = newValue.toString();
            },
          ),
        ),
      ),
    ],
  );
}
