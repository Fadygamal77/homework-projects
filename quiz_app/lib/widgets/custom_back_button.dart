import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart' show AppTextStyles;

class CustomBackButton extends StatelessWidget {
  CustomBackButton({super.key,required this.pageController});
     PageController pageController = PageController();


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(onTap: () {
          pageController.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
        },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: const Color(0xFF8D83FF) /* SECONDARY-VIOLET */,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(Icons.arrow_back_ios, color: Colors.white),
                Text('Back', style: AppTextStyles.medium16()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
