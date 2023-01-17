import 'package:cozy/provider/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:cozy/core.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    var spaceProvider = Provider.of<SpaceProvider>(context);

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
                  CityCard(imageUrl: imageJakarta, city: "Jakarta"),
                  CityCard(
                      imageUrl: imageBandung, city: "Bandung", isPopular: true),
                  CityCard(imageUrl: imageSurabaya, city: "Surabaya"),
                  CityCard(imageUrl: imagePalembang, city: "Palembang"),
                  CityCard(imageUrl: imageAceh, city: "Aceh", isPopular: true),
                  CityCard(imageUrl: imageBogor, city: "Bogor"),
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
            FutureBuilder(
              future: spaceProvider.getRecommendedSpace(),
              builder: (context, snapshot) {
                List<SpaceModel>? items = snapshot.data;

                if (snapshot.hasData) {
                  return Column(
                    children: items!.map((e) => SpaceCard(e)).toList(),
                  );
                }

                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SpinKitPouringHourGlass(
                    color: primaryColor,
                    duration: const Duration(milliseconds: 1200),
                  ),
                );
              },
            ),
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
