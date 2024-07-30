import 'package:flutter/material.dart';
import 'package:iotask/src/core/styles/app_colors.dart';

class StyledButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const StyledButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size.fromHeight(50),
          backgroundColor: AppColors.blue,
          disabledBackgroundColor: AppColors.textGrey,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      );
}
