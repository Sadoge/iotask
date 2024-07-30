import 'package:flutter/material.dart';

class HorizontalGap extends StatelessWidget {
  final double size;

  const HorizontalGap(
    this.size, {
    super.key,
  });

  @override
  Widget build(BuildContext context) => SizedBox(width: size);
}
