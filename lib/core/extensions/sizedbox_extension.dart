import 'package:flutter/material.dart';

extension SizedboxExtension on int {
  SizedBox hw() {
    return SizedBox(
      height: toDouble(),
    );
  }

  SizedBox ww() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
