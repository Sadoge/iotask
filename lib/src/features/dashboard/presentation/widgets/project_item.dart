import 'package:flutter/material.dart';
import 'package:iotask/src/core/styles/app_colors.dart';
import 'package:iotask/src/core/styles/text_styles.dart';

class ProjectItem extends StatelessWidget {
  final String title;

  const ProjectItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child:
          Text(title, style: textSemiBold.copyWith(color: AppColors.textBlack)),
    );
  }
}
