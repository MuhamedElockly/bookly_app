import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingIndicator extends StatelessWidget {
  CustomLoadingIndicator();
  @override
  Widget build(BuildContext context) {
    List<Color> colors = [Colors.yellow, Colors.grey];
    return Shimmer(
      child: Container(),
      gradient: LinearGradient(
        colors: colors,
      ),
    );
  }
}
