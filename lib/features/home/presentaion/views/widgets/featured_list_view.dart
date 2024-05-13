import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentaion/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.width * .4,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                
                return  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: FeaturedListViewItem(state.books[index].volumeInfo!.imageLinks!.thumbnail.toString()),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomError(errorMessage: state.errorMessage.toString());
        } else {
          return Center(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
