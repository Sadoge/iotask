import 'package:flutter/material.dart';

class VerticalGap extends StatelessWidget {
  final double size;

  const VerticalGap(this.size, {super.key});

  @override
  Widget build(BuildContext context) => SizedBox(height: size);
}
