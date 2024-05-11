import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, itemCount) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
