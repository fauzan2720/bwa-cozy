import 'package:flutter/material.dart';
import 'package:cozy/core.dart';

class PageNotFoundView extends StatefulWidget {
  const PageNotFoundView({Key? key}) : super(key: key);

  Widget build(context, PageNotFoundController controller) {
    controller.view = this;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image404,
              width: 300.0,
              height: 85.0,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 70.0,
            ),
            Text(
              "Where are you going?",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 14.0,
            ),
            Text(
              "Seems like the page that you were\nrequested is already gone",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50.0,
            ),
            FozPrimaryButton(
              width: 210.0,
              label: "Back to Home",
              onPressed: () => Get.offAll(const MainNavigationView()),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<PageNotFoundView> createState() => PageNotFoundController();
}
