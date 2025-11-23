import 'package:flutter/material.dart';
import 'package:quiz_app/models/quizManager.dart';

import '../models/question_model.dart';
import 'option_item.dart';

class optionsList extends StatefulWidget {
  const optionsList({super.key, required this.questionModel, required this.quizmanager});

final QuestionModel questionModel;
final Quizmanager quizmanager;
  @override
  State<optionsList> createState() => _optionsListState();
}

class _optionsListState extends State<optionsList> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.questionModel.options.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            selectedindex = index;
            String selectedAnswer=widget.questionModel.options[index];
            widget.quizmanager.updateSelectedAnswer(widget.questionModel, selectedAnswer);
            setState(() {});
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: OptionItem(
              isSelected: selectedindex == index,
              optionText:widget.questionModel.options[index],
            ),
          ),
        );
      },
    );
  }
}
