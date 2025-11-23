import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

abstract class AppDecorations {
  static ShapeDecoration selectedAnswerBackgroundGradient = ShapeDecoration(
    gradient: buildSecondaryGradient(),

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );
static ShapeDecoration notSelectedAnswerBackgroundGradient = ShapeDecoration(
     
        color: Colors.white /* MAINE-WHITE */,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      );


  static BoxDecoration mainBackgroundDecoration = BoxDecoration(
    gradient: buildBackgroundGradient(),
  );

  static LinearGradient buildSecondaryGradient() => LinearGradient(
    colors: [Color(0XFFB8B2FF), Color(0XFFC6C2F8)],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
  );

  static LinearGradient buildBackgroundGradient() => LinearGradient(
    colors: [Color(0XFF060B26), Color(0XFF1A1F37)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
