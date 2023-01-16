import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  const SpaceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalSize, vertical: 15.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: radiusPrimary,
            child: Stack(
              children: [
                Image.network(
                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                  width: 130.0,
                  height: 110.0,
                  fit: BoxFit.cover,
                ),
                Container(
                  alignment: Alignment.topRight,
                  width: 130.0,
                  child: Container(
                    width: 70.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30.0)),
                      color: primaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star_rounded,
                          size: 24.0,
                          color: warningColor,
                        ),
                        Text(
                          "4/5",
                          style: TextStyle(
                            fontWeight: medium,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kuretakeso Hott",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: medium,
                ),
              ),
              Text.rich(
                TextSpan(
                  text: '\$52',
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
              const SizedBox(
                height: 16.0,
              ),
              Text(
                "Bandung, Germany",
                style: TextStyle(
                  fontWeight: light,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
