import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  const CityCard({super.key, this.isPopular = false});
  final bool isPopular;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      width: 120.0,
      height: 150.0,
      decoration: BoxDecoration(
        borderRadius: radiusPrimary,
        color: cardColor,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(radiusPrimarySize)),
            child: Stack(
              children: [
                Image.network(
                  "https://i.ibb.co/S32HNjD/no-image.jpg",
                  width: 120.0,
                  height: 102.0,
                  fit: BoxFit.cover,
                ),
                if (isPopular)
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30.0)),
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.star_rounded,
                          size: 24.0,
                          color: warningColor,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 11.0,
          ),
          Text(
            "Jakarta",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
