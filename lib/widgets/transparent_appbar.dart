import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransparentAppBar({
    Key key,
    this.leading,
    this.title,
    this.trailing,
  }) : super(key: key);

  final Widget leading;
  final Widget title;
  final Widget trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: ListTile(
        leading: leading,
        title: title,
        trailing: trailing,
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
