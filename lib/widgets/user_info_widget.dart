import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/core/constants/AppImages.dart';
import 'package:flutter_responsive_dashboard/core/utils/app_colors.dart';
import 'package:flutter_responsive_dashboard/core/utils/styles/app_styles.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: AppColors.containerLightGreyColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          SvgPicture.asset(AppImages.imagesAvatarImage),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Omar Salama", style: AppStyles.styleSemiBold16),
              Text("OmarSalama9011@gmail.comh", style: AppStyles.styleRegular12),
            ],
          ),
        ],
      ),
    );
  }
}
