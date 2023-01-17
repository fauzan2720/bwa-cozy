import 'package:flutter/material.dart';
import '/core.dart';

void showConfirmation({
  required void Function() onPressed,
  String? message,
}) async {
  bool confirm = false;
  await showDialog<void>(
    context: Get.currentContext,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Konfirmasi'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(message ?? 'Apakah anda yakin ?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Batal",
              style: TextStyle(color: primaryColor),
            ),
          ),
          TextButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
            ),
            onPressed: () {
              confirm = true;
              Navigator.pop(context);
            },
            child: const Text(
              "Hubungi",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      );
    },
  );

  if (confirm) {
    onPressed();
  }
}
