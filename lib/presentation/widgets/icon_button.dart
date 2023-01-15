import 'package:flutter/material.dart';
import 'package:messanger_clone_app/presentation/cores/color.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    Key? key,
    required this.tap,
    required this.icon,
    this.bgColor,
    this.iconColor,
  }) : super(key: key);

  final GestureTapCallback tap;
  final IconData icon;
  final Color? bgColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FloatingActionButton(
        backgroundColor: bgColor ?? AppColor.grey.withOpacity(0.3),
        onPressed: tap,
        child: Icon(
          icon,
          color: iconColor ?? AppColor.white,
        ),
      ),
    );
  }
}
