import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({
    super.key,
    required this.imageUrl,
    required this.isActive,
  });
  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: ImageIcon(
            AssetImage(imageUrl),
            size: 24.0,
            color: isActive ? primaryColor : secondaryColor,
          ),
        ),
        const Spacer(),
        if (isActive)
          Container(
            height: 2.0,
            width: 30.0,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(1000.0)),
              color: primaryColor,
            ),
          ),
      ],
    );
  }
}
