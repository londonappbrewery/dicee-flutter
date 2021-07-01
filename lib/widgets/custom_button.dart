import 'package:dicee/styles/buttonstyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef CustomCallback = void Function(String string);

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final CustomCallback customCallback;
  final ButtonStyle style;

  const CustomButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.customCallback,
    this.style,
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
  }) =>
      CustomButton(
        key: key,
        child: child,
        onPressed: onPressed,
        style: StylesGuide.defaultStyle
            .copyWith(padding: MaterialStateProperty.all(EdgeInsets.all(100))),
      );

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => customCallback('yoo'),
      style: style,
      child: child,
    );
  }
}

class CustomButtonTwo extends CustomButton {
  final Widget child;
  final VoidCallback onPressed;
  final ButtonStyle style;

  const CustomButtonTwo({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.style,
  }) : super(
          key: key,
          onPressed: onPressed,
          child: child,
        );

  Widget _text(BuildContext context) => TextButton(
        onPressed: () => null,
        child: Text('hey'),
      );

  @override
  Widget build(BuildContext context) {
    debugPrint('HEYY');
    return _text(context);

    // return TextButton(
    //   onPressed: onPressed,
    //   style: style,
    //   child: child,
    // );
  }
}
