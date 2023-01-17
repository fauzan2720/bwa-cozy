import 'package:cozy/core.dart';
import 'package:flutter/material.dart';

Widget mainFacilitiesWidget({
  required String iconUrl,
  required int number,
  required String label,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        iconUrl,
        width: 32.0,
        height: 32.0,
        fit: BoxFit.fill,
      ),
      const SizedBox(
        height: 8.0,
      ),
      Text.rich(
        TextSpan(
          text: "$number",
          style: TextStyle(
            color: primaryColor,
            fontWeight: medium,
          ),
          children: [
            TextSpan(
              text: " $label",
              style: TextStyle(
                color: secondaryColor,
                fontWeight: light,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
