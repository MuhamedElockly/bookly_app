import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_error.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/featured_list_view_item.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_result_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchResultCubit, SearchResultState>(
      builder: (context, state) {
        if (state is SearchResultSuccess) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchResultFailure) {
          return CustomError(errorMessage: state.errMessage);
        } else {
          return CustomLoadingIndicator();
        }
      },
    );
  }
}
