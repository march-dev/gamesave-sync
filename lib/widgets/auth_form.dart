import 'package:flutter/material.dart';

class AuthForm extends StatelessWidget {
  const AuthForm({
    Key key,
    @required this.title,
    @required this.children,
  })  : assert(title != null),
        assert(children != null),
        super(key: key);

  final String title;
  final Iterable<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.blueGrey[700],
        child: Container(
          constraints: BoxConstraints(maxWidth: 350),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              const SizedBox(height: 12),
              AuthFormTitle(title: title),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ...children,
                      const SizedBox(height: 4),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AuthFormTitle extends StatelessWidget {
  const AuthFormTitle({
    Key key,
    @required this.title,
  })  : assert(title != null),
        super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey[200],
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Material(
          elevation: 2,
          color: Colors.blueGrey[900],
          child: const SizedBox(height: 1),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
