import 'package:flutter/material.dart';

import 'not_selected_option_item.dart';
import 'selected_option_item.dart';

class OptionItem extends StatelessWidget {
  final bool isSelected;
  final String optionText;
  const OptionItem({super.key, required this.isSelected, required this.optionText});

  @override
  Widget build(BuildContext context) {
    return isSelected ? SelectedOptionItem(optionText:optionText ,) : NotSelectedOptionItem(optionText: optionText,);
  }
}