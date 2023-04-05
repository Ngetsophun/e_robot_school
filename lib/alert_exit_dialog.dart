import 'package:flutter/material.dart';

enum DialogAcion {yes, cancel}

class AlertDialogs {

  static Future<DialogAcion>(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
          );
        });
  }
}
