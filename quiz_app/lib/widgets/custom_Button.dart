import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../views/quiz_view.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GestureDetector(onTap: () => {
        Navigator.push(context, MaterialPageRoute(builder: (context) => QuizView()))
      },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 13,
          ),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Center(
            child: Text(
              'Start Quiz',
              style: AppTextStyles.medium18(color: AppColors.primary),
            ),
          ),
        ),
      ),
    );
  }
}
