import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key key,
    this.hintText,
    this.labelText,
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final String labelText;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]),
            gapPadding: 0,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]),
            gapPadding: 0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]),
            gapPadding: 0,
          ),
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(
            color: Colors.grey[600],
          ),
          labelStyle: TextStyle(
            color: Colors.grey[600],
          ),
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
    this.obscureText = false,
  }) : super(key: key);

  final String hintText;
  final String labelText;

  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]),
            gapPadding: 0,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]),
            gapPadding: 0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.grey[400]),
            gapPadding: 0,
          ),
          hintText: hintText,
          labelText: labelText,
          hintStyle: TextStyle(
            color: Colors.grey[600],
          ),
          labelStyle: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        obscureText: obscureText,
        style: TextStyle(color: Colors.grey[200]),
      ),
    );
  }
}
