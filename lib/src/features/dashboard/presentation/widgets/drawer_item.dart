import 'package:flutter/material.dart';
import 'package:iotask/src/core/styles/app_colors.dart';
import 'package:iotask/src/core/styles/dimensions.dart';
import 'package:iotask/src/core/styles/text_styles.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isActive;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) => Container(
        decoration: isActive
            ? const BoxDecoration(
                color: AppColors.backgroundGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(Dimensions.regular),
                ),
              )
            : null,
        child: ListTile(
          leading:
              Icon(icon, color: isActive ? AppColors.blue : AppColors.textGrey),
          title: Text(
            title,
            style: textSemiBold.copyWith(
              color: isActive ? AppColors.blue : AppColors.textBlack,
            ),
          ),
          onTap: () {},
        ),
      );
}
