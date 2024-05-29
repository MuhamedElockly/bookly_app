import 'package:bookly_app/features/search/presentation/manager/cubit/search_result_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
        BlocProvider.of<SearchResultCubit>(context)
                .fetchResultBook(subjec: '');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
