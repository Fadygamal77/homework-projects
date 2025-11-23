import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/theme/app_colors.dart';
import 'package:quiz_app/theme/app_text_styles.dart';

import '../assets.dart';
import '../theme/App_decorations.dart';
import '../widgets/custom_Button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: AppDecorations.mainBackgroundDecoration,

        child: Stack(
          children: [
            Image.asset(Assets.gradient),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Text('Good morning,', style: AppTextStyles.regular16()),
                    SizedBox(height: 8),
                    Text(
                      'New topic is waiting',
                      style: AppTextStyles.medium24(),
                    ),
                    SizedBox(height: 100),
                    Center(child: Image.asset(Assets.homeImage, scale: 0.001)),
                    Spacer(),
                    customButton(),
                    SizedBox(height: 60),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
