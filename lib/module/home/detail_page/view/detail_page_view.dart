import 'package:cozy/provider/wishlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:cozy/core.dart';
import 'package:provider/provider.dart';

class DetailPageView extends StatefulWidget {
  const DetailPageView(this.space, {Key? key}) : super(key: key);
  final SpaceModel space;

  Widget build(context, DetailPageController controller) {
    controller.view = this;
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Image.network(
            space.imageUrl!,
            height: 375.0,
            width: Get.width,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(top: 350.0),
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20.0)),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // HEADER
                  const SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: primaryHorizontalSize,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              space.name!,
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: medium,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                text: '\$${space.price}',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: medium,
                                  color: primaryColor,
                                ),
                                children: [
                                  TextSpan(
                                    text: ' / month',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: light,
                                      color: secondaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            for (var i = 0; i < space.rating!; i++)
                              Icon(Icons.star, color: warningColor),
                            for (var i = 0; i < 5 - space.rating!; i++)
                              Icon(Icons.star_border, color: warningColor),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  // MAIN FACILITIES
                  Padding(
                    padding: primaryHorizontalSize,
                    child: const Text(
                      "Main Facilities",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Padding(
                    padding: primaryHorizontalSize,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mainFacilitiesWidget(
                          iconUrl: iconKitchen,
                          number: space.numberOfKitchens!,
                          label: "kitchen",
                        ),
                        mainFacilitiesWidget(
                          iconUrl: iconBedroom,
                          number: space.numberOfBedrooms!,
                          label: "bedroom",
                        ),
                        mainFacilitiesWidget(
                          iconUrl: iconBigCupboard,
                          number: space.numberOfCupboards!,
                          label: "big cupboard",
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  // PHOTOS
                  Padding(
                    padding: primaryHorizontalSize,
                    child: const Text(
                      "Photos",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: horizontalSize - 9.0),
                      child: Row(
                        children: space.photos!
                            .map(
                              (event) => InkWell(
                                onTap: () => Get.to(PhotoViewWidget(space)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 9.0),
                                  child: ClipRRect(
                                    borderRadius: radiusPrimary,
                                    child: Image.network(
                                      event,
                                      width: 110.0,
                                      height: 88.0,
                                      fit: BoxFit.cover,
                                      errorBuilder: (BuildContext context,
                                          Object exception,
                                          StackTrace? stackTrace) {
                                        return const SizedBox();
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),

                  // LOCATION
                  Padding(
                    padding: primaryHorizontalSize,
                    child: const Text(
                      "Location",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Padding(
                    padding: primaryHorizontalSize,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${space.address}\n${space.city}, ${space.country}",
                          style: TextStyle(
                            color: secondaryColor,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: cardColor,
                          child: IconButton(
                            onPressed: () => GoToUrl().toUrl("${space.mapUrl}"),
                            icon: Icon(
                              Icons.pin_drop,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Padding(
                    padding: primaryHorizontalSize,
                    child: FozPrimaryButton(
                      label: "Book Now",
                      onPressed: () => showConfirmation(
                          onPressed: () =>
                              GoToUrl().toUrl("tel:${space.phone}"),
                          message:
                              "Apakah kamu ingin menghubungi pemilik kos?"),
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: primarySize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: whiteColor,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(
                      Icons.chevron_left,
                      color: primaryColor,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: whiteColor,
                  child: IconButton(
                    onPressed: () {
                      wishlistProvider.setProduct(space);
                      if (wishlistProvider.isWishlist(space)) {
                        showSuccess(message: "Berhasil ditambahkan");
                      } else {
                        showSuccess(message: "Berhasil dihapus");
                      }
                      controller.refresh();
                    },
                    icon: Icon(
                      wishlistProvider.isWishlist(space)
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: wishlistProvider.isWishlist(space)
                          ? redColor
                          : primaryColor,
                      size: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DetailPageView> createState() => DetailPageController();
}
