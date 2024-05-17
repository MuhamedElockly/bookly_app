import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
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
