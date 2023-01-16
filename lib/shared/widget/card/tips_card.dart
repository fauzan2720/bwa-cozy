import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({
    required this.title,
    required this.imageUrl,
    required this.updatedAt,
    required this.onPressed,
    super.key,
  });
  final String title;
  final String imageUrl;
  final String updatedAt;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: horizontalSize),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                  width: 80.0,
                  height: 80.0,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: medium,
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "Updated $updatedAt",
                      style: TextStyle(
                        fontWeight: light,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              color: secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
