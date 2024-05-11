import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.close),
        ),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_shopping_cart_outlined),
        ),
      ],
    );
  }
}
