import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({Key? key, required this.error}) : super(key: key);

  final Object error;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            '💔${error is Exception ? '\n$error' : ''}',
            textAlign: TextAlign.center,
          ),
        ),
      );
}
