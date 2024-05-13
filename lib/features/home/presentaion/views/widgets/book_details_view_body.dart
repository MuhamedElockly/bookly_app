import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_ratin.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .17),
                  child: FeaturedListViewItem('https://www.google.com/url?sa=i&url=https%3A%2F%2Fjustpublishingadvice.com%2Fdoes-your-book-cover-work-for-you-in-thumbnail-size%2F&psig=AOvVaw3rach35jdRe9MxrVzDkBm-&ust=1715645778496000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPjb-dusiYYDFQAAAAAdAAAAABAE'),
                ),
                SizedBox(
                  height: 43,
                ),
                Text(
                  "The Jungle Book",
                  style: Styles.textStyle30,
                ),
                SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    "Rydialk Klibing",
                    style: Styles.textStyle14.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(
                  height: 37,
                ),
                BookAction(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SimilarBooksListView(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
