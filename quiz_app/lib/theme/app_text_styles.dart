import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle medium24({Color? color}) {
    return TextStyle(
      fontSize: 24,
      height: 28 / 24,
      fontWeight: FontWeight.w500,
      color: color??Colors.white,
    );
  }

  static TextStyle regular24({Color? color}) {
    return TextStyle(
      fontSize: 24,
      height: 28 / 24,
      fontWeight: FontWeight.normal,
      color: color??Colors.white,
    );
  }

  static TextStyle medium18({Color? color}) {
    return TextStyle(
      fontSize: 18,
      height: 21 / 18,
      fontWeight: FontWeight.w500,
      color: color??Colors.white,
    );
  }

  static TextStyle regular18({Color? color}) {
    return TextStyle(
      fontSize: 18,
      height: 21 / 18,
      fontWeight: FontWeight.normal,
      color: color??Colors.white,
    );
  }

  static TextStyle medium16({Color? color}) {
    return TextStyle(
      fontSize: 16,
      height: 19 / 16,
      fontWeight: FontWeight.w500,
      color: color??Colors.white,
    );
  }

  static TextStyle regular16({Color? color}) {
    return TextStyle(
      fontSize: 16,
      height: 19 / 16,
      fontWeight: FontWeight.normal,
      color: color??Colors.white,
    );
  }

  static TextStyle medium12({Color? color}) {
    return TextStyle(
      fontSize: 12,
      height: 14 / 12,
      fontWeight: FontWeight.w500,
      color: color??Colors.white,
    );
  }

  static TextStyle regular12({Color? color}) {
    return TextStyle(
      fontSize: 12,
      height: 14 / 12,
      fontWeight: FontWeight.normal,
      color: color??Colors.white,
    );
  }
}
