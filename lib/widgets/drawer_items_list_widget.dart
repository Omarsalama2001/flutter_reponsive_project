import 'package:flutter/material.dart';
import 'package:flutter_responsive_dashboard/core/constants/AppImages.dart';
import 'package:flutter_responsive_dashboard/core/models.dart';
import 'package:flutter_responsive_dashboard/widgets/drawer_item_widget.dart';

class DrawerItemsListWidget extends StatefulWidget {
  const DrawerItemsListWidget({super.key});

  @override
  State<DrawerItemsListWidget> createState() => _DrawerItemsListWidgetState();
}

class _DrawerItemsListWidgetState extends State<DrawerItemsListWidget> {
  int selectedIndex = 0;
  List<DrawerItemModel> drawerItems = [DrawerItemModel(title: "Dashboard", iconPath: AppImages.iconsDashboadIcon), DrawerItemModel(title: "My Transactions", iconPath: AppImages.iconsMyTransactionIcon), DrawerItemModel(title: "Statistics", iconPath: AppImages.iconsStatisticsIcon), DrawerItemModel(title: "Wallet Account", iconPath: AppImages.iconsWalletIcon), DrawerItemModel(title: "My Investments", iconPath: AppImages.iconsMyInvestmentIcon)];
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if(selectedIndex == index) return;
            setState(() {
              selectedIndex = index;
            });
          },
          child: DrawerItemWidget(item: drawerItems[index], isSelected: index == selectedIndex),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 20);
      },
    );
  }
}
