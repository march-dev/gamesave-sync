import 'package:flutter/material.dart';

enum _ButtonType { raised, flat, outlined }

class ColorPreset {
  const ColorPreset(
    this.mainColor,
    this.textColor,
    this.borderSideColor,
    this.highlightedBorderColor,
  );

  final Color mainColor;
  final Color textColor;
  final Color borderSideColor;
  final Color highlightedBorderColor;

  static const blueOutlined = ColorPreset(
    Colors.blue,
    Colors.blue,
    Color(0xff90caf9),
    Colors.blue,
  );
  static const greenRaised = ColorPreset(
    Colors.green,
    Color(0xffeeeeee),
    Colors.green,
    Colors.green,
  );
  static const blueRaised = ColorPreset(
    Colors.blue,
    Color(0xffeeeeee),
    Colors.blue,
    Colors.blue,
  );
}

class Button extends StatelessWidget {
  const Button({
    Key key,
    this.onPressed,
    this.preset = ColorPreset.greenRaised,
    @required this.child,
  })  : type = _ButtonType.raised,
        assert(child != null),
        super(key: key);

  const Button.outlined({
    Key key,
    this.onPressed,
    this.preset = ColorPreset.blueOutlined,
    @required this.child,
  })  : type = _ButtonType.outlined,
        assert(child != null),
        super(key: key);

  final _ButtonType type;

  final ColorPreset preset;

  final Widget child;
  final VoidCallback onPressed;

  Widget get _buildButton {
    Widget result;

    switch (type) {
      case _ButtonType.outlined:
        result = OutlineButton(
          child: child,
          onPressed: onPressed,
          textColor: preset.textColor,
          highlightedBorderColor: preset.highlightedBorderColor,
          borderSide: BorderSide(
            color: preset.borderSideColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
        );
        break;

      case _ButtonType.raised:
      default:
        result = RaisedButton(
          child: child,
          onPressed: onPressed,
          color: preset.mainColor,
          textColor: preset.textColor,
          shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
          ),
        );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: _buildButton,
    );
  }
}
