import 'package:flutter/material.dart';
import 'package:cozy/core.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  Widget build(context, SplashScreenController controller) {
    controller.view = this;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              backgroundSplashScreen,
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    logo,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Find Cozy House\nto Stay and Happy",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: medium,
                      color: blackColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Stop membuang banyak waktu\npada tempat yang tidak habitable",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: light,
                      color: secondaryColor,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  FozPrimaryButton(
                    label: "Explore Now",
                    onPressed: () => Get.put(const MainNavigationView()),
                    width: 210.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<SplashScreenView> createState() => SplashScreenController();
}
