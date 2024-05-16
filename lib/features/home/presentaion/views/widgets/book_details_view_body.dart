import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
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
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookModel bookModel;

  const BookDetailsViewBody({super.key, required this.bookModel});
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
                  child: FeaturedListViewItem(
                      bookModel.volumeInfo!.imageLinks!.thumbnail!),
                ),
                SizedBox(
                  height: 43,
                ),
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  bookModel.volumeInfo!.title!,
                  style: Styles.textStyle30,
                ),
                SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    bookModel.volumeInfo!.description!,
                    style: Styles.textStyle14.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                BookRating(
                  averageRating: bookModel.volumeInfo!.averageRating ?? 0,
                  ratingCount: bookModel.volumeInfo!.ratingCount ?? 0,
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
