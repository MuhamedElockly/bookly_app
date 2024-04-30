import 'package:bookly_app/features/home/presentaion/views/widgets/list_view_item.dart';
import 'package:flutter/cupertino.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * .4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
