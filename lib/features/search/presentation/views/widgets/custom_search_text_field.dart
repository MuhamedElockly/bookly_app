import 'package:bookly_app/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/cubit/search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outLineInputBorder(),
        focusedBorder: outLineInputBorder(),
        hintText: 'Search',
        suffixIcon: IconButton(
          onPressed: () {
            BlocProvider.of<SearchResultCubit>(context)
                .fetchResultBook(subjec: 'football');
          },
          icon: Opacity(
            opacity: .8,
            child: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder outLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
