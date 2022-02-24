import 'package:flutter/material.dart';

class CustomFAB extends StatelessWidget {
  final IconData icon;
  final VoidCallback? function;

  const CustomFAB({Key? key, required this.icon, this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed:  function, child: Icon(icon));
  }
}
