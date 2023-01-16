import 'package:cozy/module/home/main_navigation/widget/bottom_nav_item.dart';
import 'package:cozy/shared/util/style/icon.dart';
import 'package:flutter/material.dart';
import 'package:cozy/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      body: const HomeView(),
      floatingActionButton: Container(
        height: 65.0,
        margin: EdgeInsets.fromLTRB(horizontalSize, 0.0, horizontalSize, 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: cardColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 0.1,
              offset: const Offset(0, 0),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavItem(
              imageUrl: iconHome,
              isActive: true,
            ),
            BottomNavItem(
              imageUrl: iconMail,
              isActive: false,
            ),
            BottomNavItem(
              imageUrl: iconCard,
              isActive: false,
            ),
            BottomNavItem(
              imageUrl: iconLove,
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
