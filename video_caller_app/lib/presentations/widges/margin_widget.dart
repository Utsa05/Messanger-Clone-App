import 'package:flutter/material.dart';

class MarginWidget extends StatelessWidget {
  const MarginWidget({super.key, this.height, this.width});
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 14.0,
      width: width ?? 14.0,
    );
  }
}
