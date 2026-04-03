import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/core/utils/app_colors.dart';
import 'package:flutter_responsive_dashboard/widgets/addaptive_layout_widget.dart';
import 'package:flutter_responsive_dashboard/widgets/desktop_layout_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGroundColor,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => Container(color: Colors.red),
        tabletLayout: (context) => Container(color: Colors.green),
        desktopLayout: (context) => DesktopLayoutWidget(),
      ),
    );
  }
}
