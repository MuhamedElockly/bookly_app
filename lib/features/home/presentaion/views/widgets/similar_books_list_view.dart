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
            child: FeaturedListViewItem('https://www.google.com/url?sa=i&url=https%3A%2F%2Fjustpublishingadvice.com%2Fdoes-your-book-cover-work-for-you-in-thumbnail-size%2F&psig=AOvVaw3rach35jdRe9MxrVzDkBm-&ust=1715645778496000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPjb-dusiYYDFQAAAAAdAAAAABAE'),
          );
        },
      ),
    );
  }
}
