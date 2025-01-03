import 'package:flutter/material.dart';

Widget navigationBarTest(BuildContext context, bool isMobile) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
        },
      ),
    ],
  );
}
