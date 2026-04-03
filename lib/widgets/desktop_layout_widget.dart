import 'package:flutter/material.dart';

import 'package:flutter_responsive_dashboard/widgets/dashboard_custom_drawer.dart';

class DesktopLayoutWidget extends StatelessWidget {
  const DesktopLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: DashboardCustomDrawer()),
        
      ],
    );
  }
}
