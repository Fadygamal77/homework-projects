import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/theme/App_decorations.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

import '../assets.dart';

class SelectedOptionItem extends StatelessWidget {
  const SelectedOptionItem({super.key, required this.optionText});
  final String optionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: AppDecorations.selectedAnswerBackgroundGradient,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primary,
            child: SvgPicture.asset(Assets.checkIcon),
          ),
          Text(
            optionText,
            style: AppTextStyles.medium16(color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
