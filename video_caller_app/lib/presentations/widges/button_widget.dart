import 'package:flutter/material.dart';
import 'package:video_caller_app/presentations/constants/app_color.dart';

import 'text_widget.dart';

//normal button
class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      this.width,
      this.height,
      this.color,
      this.child,
      this.radius,
      required this.tap,
      this.splashColor,
      this.elevaiton})
      : super(key: key);
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  final double? radius;
  final GestureTapCallback tap;
  final Color? splashColor;
  final double? elevaiton;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: elevaiton ?? 3.0,
      splashColor: splashColor ?? AppColor.whiteColor,
      minWidth: width ?? 80.0,
      height: height ?? 30.0,
      color: color ?? AppColor.lightBlueColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 5.0)),
      onPressed: tap,
      onLongPress: tap,
      child: child ??
          const TextWidget(
            title: 'Button',
          ),
    );
  }
}

//cicular button
class CircleBbttonWidget extends StatelessWidget {
  const CircleBbttonWidget({
    Key? key,
    this.iconSize,
    this.splashRadiurs,
    this.color,
    this.child,
    required this.tap,
    this.splashColor,
  }) : super(key: key);
  final double? iconSize;
  final double? splashRadiurs;
  final Color? color;
  final Widget? child;
  final GestureTapCallback tap;
  final Color? splashColor;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: splashColor ?? AppColor.whiteColor,
      splashRadius: splashRadiurs ?? 20.0,
      iconSize: iconSize ?? 15.0,
      icon: child ?? const Icon(Icons.emoji_emotions),
      color: color ?? AppColor.navBlueColor,
      onPressed: tap,
    );
  }
}
