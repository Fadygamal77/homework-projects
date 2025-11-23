import 'package:flutter/material.dart';

import '../theme/app_text_styles.dart';

class CustomNextButton extends StatelessWidget {
  CustomNextButton({super.key, required this.pageController,required this.pageCount});
  PageController pageController = PageController();
  final int pageCount ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (pageController.page!.toInt()<pageCount) {
  pageController.nextPage(
    duration: const Duration(milliseconds: 500),
    curve: Curves.linear,
    
  );
}else{
 }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFF8D83FF) /* SECONDARY-VIOLET */,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 11,
              children: [
                Text('Next', style: AppTextStyles.medium16()),
                Icon(Icons.arrow_forward_ios, color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
