import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iotask/src/core/styles/app_colors.dart';
import 'package:iotask/src/core/styles/dimensions.dart';
import 'package:iotask/src/core/styles/text_styles.dart';
import 'package:iotask/src/features/dashboard/presentation/widgets/drawer_item.dart';
import 'package:iotask/src/features/dashboard/presentation/widgets/project_item.dart';
import 'package:iotask/src/features/shared/widgets/vertical_gap.dart';

class StyledNavigationDrawer extends StatelessWidget {
  const StyledNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/images/logo.svg', height: 30),
          ),
          const Divider(height: 1, color: AppColors.borderGrey),
          const VerticalGap(Dimensions.regular),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Navigation', style: text),
                VerticalGap(Dimensions.small),
                DrawerItem(icon: Icons.dashboard_outlined, title: 'Dashboard'),
                DrawerItem(
                  icon: Icons.work_outline,
                  title: 'Projects',
                  isActive: true,
                ),
                DrawerItem(icon: Icons.check_box_outlined, title: 'Tasks'),
                DrawerItem(icon: Icons.event_outlined, title: 'Calendar'),
                DrawerItem(icon: Icons.contacts_outlined, title: 'Contacts'),
                DrawerItem(icon: Icons.apps_outlined, title: 'All Apps'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Latest Projects', style: text),
                const VerticalGap(Dimensions.small),
                const ProjectItem(title: 'UI/UX Inspiration'),
                const ProjectItem(title: 'Theme Development'),
                const ProjectItem(title: 'Campaign Design'),
                const ProjectItem(title: 'Content Creation'),
                const ProjectItem(title: 'SaaS Template Design'),
                const VerticalGap(Dimensions.small),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See More Projects',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: AppColors.borderGrey),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.all(Dimensions.regular),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerItem(icon: Icons.help_outline, title: 'Help Center'),
                DrawerItem(icon: Icons.settings_outlined, title: 'Settings'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
