import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/core/constants/AppImages.dart';
import 'package:flutter_responsive_dashboard/core/models.dart';
import 'package:flutter_responsive_dashboard/core/utils/app_colors.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer_item_widget.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer_items_list_widget.dart';
import 'package:flutter_responsive_dashboard/widgets/user_info_widget.dart';

class DashboardCustomDrawer extends StatefulWidget {
  const DashboardCustomDrawer({super.key});

  @override
  State<DashboardCustomDrawer> createState() => _DashboardCustomDrawerState();
}

class _DashboardCustomDrawerState extends State<DashboardCustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 28.0, right: 20),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: UserInfoWidget()),
            DrawerItemsListWidget(),

            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Spacer(),
                  DrawerItemWidget(
                    item: DrawerItemModel(title: "Settings", iconPath: AppImages.iconsSettingIcon),
                  ),
                  SizedBox(height: 20),
                  DrawerItemWidget(
                    item: DrawerItemModel(title: "Logout", iconPath: AppImages.iconsLogoutIcon),
                  ),
                  SizedBox(height: 28),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
