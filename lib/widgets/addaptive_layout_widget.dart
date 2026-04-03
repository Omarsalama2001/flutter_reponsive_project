import 'package:flutter/material.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  final WidgetBuilder mobileLayout;
  final WidgetBuilder tabletLayout;
  final WidgetBuilder desktopLayout;
  const AdaptiveLayoutWidget({
    super.key, required this.mobileLayout, required this.tabletLayout, required this.desktopLayout,
      
  });

  @override

  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 600) {
          return mobileLayout(context);
        } else if (constraint.maxWidth < 900) {
          return tabletLayout(context);
        } else {
          return desktopLayout(context);
        }
        
      },
    );
  }
}
