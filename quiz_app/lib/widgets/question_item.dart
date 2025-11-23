import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app/assets.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/quizManager.dart';
import 'package:quiz_app/theme/app_text_styles.dart';
import 'package:quiz_app/widgets/not_selected_option_item.dart';
import 'package:quiz_app/widgets/option_item.dart';
import 'package:quiz_app/widgets/question_item_header.dart';

import 'options_list.dart';
import 'selected_option_item.dart';

class QuestionItem extends StatelessWidget {
  const QuestionItem({super.key, required this.questionModel, required this.quizmanager});
  final QuestionModel questionModel;
  final Quizmanager quizmanager;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          QuestionItemHeader(questionModel: questionModel),
          SizedBox(height: 20),
          Text(questionModel.title, style: AppTextStyles.medium24()),
          SizedBox(height: 32),
          optionsList(questionModel: questionModel, quizmanager: quizmanager),
        ],
      ),
    );
  }
}
