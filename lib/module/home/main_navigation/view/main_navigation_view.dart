import 'package:flutter/material.dart';
import 'package:cozy/core.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
    controller.view = this;

    return Scaffold(
      body: controller.handleBody(),
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
              index: 0,
              imageUrl: iconHome,
              isActive: controller.currentIndex == 0 ? true : false,
            ),
            BottomNavItem(
              index: 1,
              imageUrl: iconMail,
              isActive: controller.currentIndex == 1 ? true : false,
            ),
            BottomNavItem(
              index: 2,
              imageUrl: iconCard,
              isActive: controller.currentIndex == 2 ? true : false,
            ),
            BottomNavItem(
              index: 3,
              imageUrl: iconLove,
              isActive: controller.currentIndex == 3 ? true : false,
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
