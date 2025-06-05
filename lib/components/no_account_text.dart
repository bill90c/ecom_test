import 'package:flutter/material.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Registration is currently disabled.',
      style: TextStyle(fontSize: 16),
      textAlign: TextAlign.center,
    );
  }
}
