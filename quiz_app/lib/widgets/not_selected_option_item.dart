import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/theme/App_decorations.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

import '../assets.dart';

class NotSelectedOptionItem extends StatelessWidget {
  const NotSelectedOptionItem({super.key, required this.optionText});
  final String optionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      decoration: AppDecorations.notSelectedAnswerBackgroundGradient,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 16,
        children: [
          CircleAvatar(
            radius: 12,
            backgroundColor: AppColors.primary,
            child: CircleAvatar(
              radius: 10.2,
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                Assets.checkIcon,
                colorFilter: const ColorFilter.mode(
                  AppColors.primary,
                  BlendMode.srcIn,
                ),
              ),
            ),
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
