import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 32,
          ),
          const Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 32,
              ))
        ],
      ),
    );
  }
}
