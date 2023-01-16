import 'package:cozy/shared/widget/card/city_card.dart';
import 'package:cozy/shared/widget/card/space_card.dart';
import 'package:cozy/shared/widget/card/tips_card.dart';
import 'package:flutter/material.dart';
import 'package:cozy/core.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 44.0,
            ),
            Padding(
              padding: primaryHorizontalSize,
              child: Text(
                "Explore Now",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: medium,
                ),
              ),
            ),
            Padding(
              padding: primaryHorizontalSize,
              child: Text(
                "Mencari kosan yang cozy",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: light,
                  color: secondaryColor,
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: primaryHorizontalSize,
              child: const Text(
                "Popular Cities",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: horizontalSize - 10.0,
                  ),
                  const CityCard(),
                  const CityCard(isPopular: true),
                  const CityCard(),
                  const CityCard(isPopular: true),
                  const CityCard(),
                  SizedBox(
                    width: horizontalSize - 10.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: primaryHorizontalSize,
              child: const Text(
                "Recommended Space",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SpaceCard(),
            const SpaceCard(),
            const SpaceCard(),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: primaryHorizontalSize,
              child: const Text(
                "Tips & Guidance",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            TipsCard(
              title: "City Guidelines",
              imageUrl: imageCityGuidelines,
              updatedAt: "20 Apr",
              onPressed: () {},
            ),
            TipsCard(
              title: "Jakarta Fairship",
              imageUrl: imageJakartaFairship,
              updatedAt: "11 Dec",
              onPressed: () {},
            ),
            const SizedBox(
              height: 110.0,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
