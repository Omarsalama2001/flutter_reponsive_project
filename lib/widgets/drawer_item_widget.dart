import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/core/models.dart';
import 'package:flutter_responsive_dashboard/core/utils/app_colors.dart';
import 'package:flutter_responsive_dashboard/core/utils/styles/app_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerItemWidget extends StatelessWidget {
  final DrawerItemModel item;
  final bool isSelected;
  const DrawerItemWidget({super.key, required this.item, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: SvgPicture.asset(item.iconPath),
        title: Text(item.title, style: isSelected ? AppStyles.styleBold16 : AppStyles.styleRegular16),
        trailing: AnimatedContainer(duration: Duration(milliseconds: 200), width: 4, color: isSelected ? AppColors.primaryColor : Colors.transparent),
      ),
    );
  }
}
