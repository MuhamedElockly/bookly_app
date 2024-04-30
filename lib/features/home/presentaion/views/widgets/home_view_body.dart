import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        CustomFeaturedListView(),
      ],
    );
  }
}

class CustomFeaturedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CustomFeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
