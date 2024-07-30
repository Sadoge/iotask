import 'package:flutter/material.dart';
import 'package:iotask/src/core/styles/app_colors.dart';
import 'package:iotask/src/core/styles/dimensions.dart';
import 'package:iotask/src/core/styles/text_styles.dart';
import 'package:iotask/src/features/shared/widgets/vertical_gap.dart';

class StyledTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;

  const StyledTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            labelText,
            style: textSmall.copyWith(color: AppColors.textBlack),
          ),
          const VerticalGap(Dimensions.regular),
          TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: text,
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderGrey),
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderGrey),
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.borderGrey),
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
              ),
              contentPadding: const EdgeInsets.fromLTRB(
                Dimensions.intermediate,
                Dimensions.regular,
                Dimensions.intermediate,
                Dimensions.large,
              ),
            ),
          )
        ],
      );
}
