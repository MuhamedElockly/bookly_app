import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoadingIndicator extends StatelessWidget {
   CustomLoadingIndicator();
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child:  SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
