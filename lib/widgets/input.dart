import 'package:flutter/material.dart';

InputDecoration _getInputDecoration({
  @required String hintText,
  @required String labelText,
  @required IconData prefixIcon,
}) =>
    InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(color: Colors.grey[400]),
        gapPadding: prefixIcon != null ? 8 : 0,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide(color: Colors.grey[600]),
        gapPadding: prefixIcon != null ? 8 : 0,
      ),
      hintText: hintText,
      labelText: labelText,
      hintStyle: TextStyle(
        color: Colors.grey[600],
      ),
      labelStyle: TextStyle(
        color: Colors.grey[600],
      ),
      prefixIcon: prefixIcon != null
          ? Icon(
              prefixIcon,
              color: Colors.grey[400],
            )
          : null,
    );

class Input extends StatelessWidget {
  const Input({
    Key key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final IconData prefixIcon;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: TextFormField(
        decoration: _getInputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: prefixIcon,
        ),
        obscureText: obscureText,
        style: TextStyle(color: Colors.grey[200]),
      ),
    );
  }
}

class InputForm extends StatelessWidget {
  const InputForm({
    Key key,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final String labelText;
  final IconData prefixIcon;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: TextFormField(
        decoration: _getInputDecoration(
          hintText: hintText,
          labelText: labelText,
          prefixIcon: prefixIcon,
        ),
        obscureText: obscureText,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
