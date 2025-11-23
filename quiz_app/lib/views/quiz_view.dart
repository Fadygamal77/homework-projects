import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/quizManager.dart';
import 'package:quiz_app/theme/App_decorations.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/question_item.dart';

import '../assets.dart';
import '../widgets/custom_back_button.dart';
import '../widgets/custom_next_button.dart';

class QuizView extends StatefulWidget {
  QuizView({super.key});

  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  final Quizmanager quizmanager = Quizmanager();
  PageController pageController = PageController();
  int pageindex = 0;
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: AppDecorations.mainBackgroundDecoration,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    onPageChanged: (index) {
                      pageindex = index;
                      setState(() {});
                    },

                    controller: pageController,
                    itemCount: quizmanager.questions.length,
                    itemBuilder: (context, index) => QuestionItem(
                      questionModel: quizmanager.questions[index],
                      quizmanager: quizmanager,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Visibility(
                      visible: pageindex != 0,

                      child: CustomBackButton(pageController: pageController),
                    ),
                    Spacer(),
                    CustomNextButton(
                      pageController: pageController,
                      pageCount: quizmanager.questions.length,
                    ),
                  ],
                ),
                SizedBox(height: 55),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
