
import 'package:flutter/material.dart';

import 'AppColor.dart';
import 'appfonts.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.size = 16,
    this.color = Appcolors.dark,
    this.fontFamily = AppFonts.regular,
    this.line,
    this.overFlow,
  });

  final String text;
  final double size;
  final Color color;
  final String fontFamily;
  final int? line;
  final TextOverflow? overFlow;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontFamily: fontFamily,
      ),
      maxLines: line,
      overflow: overFlow,
      softWrap: true,
    );
  }
}
