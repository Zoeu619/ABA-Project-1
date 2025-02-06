import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  final Widget child;

  const DrawerWidget({required Key key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width, // Set width to screen width
      height: MediaQuery
          .of(context)
          .size
          .height, // Set height to screen height
      child: ListView(
        padding: EdgeInsets.zero,
        // ... (rest of your DrawerWidget code) ...
      ),
    );
  }
}