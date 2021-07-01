import 'package:dicee/styles/buttonstyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef CustomCallback = Set<void> Function(dynamic);

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final CustomCallback customCallback;
  final ButtonStyle style;
  final String text;

  const CustomButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.customCallback,
    this.style,
    this.text,
  }) : super(
          key: key,
        );

  factory CustomButton.custom({
    Key key,
    Widget child,
    VoidCallback onPressed,
  }) =>
      CustomButton(
        key: key,
        child: child,
        onPressed: onPressed,
        style: StylesGuide.defaultStyle,
      );

  factory CustomButton.customTwo({
    Key key,
    Widget child,
    VoidCallback onPressed,
    CustomCallback customCallback,
  }) =>
      CustomButton(
        key: key,
        child: child,
        onPressed: onPressed,
        customCallback: (data) => {print('$data')},
        style: StylesGuide.defaultStyle,
      );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}
