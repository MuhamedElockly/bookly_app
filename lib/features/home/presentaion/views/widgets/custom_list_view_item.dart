import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFeaturedListViewItem extends StatelessWidget {
  const CustomFeaturedListViewItem();
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
