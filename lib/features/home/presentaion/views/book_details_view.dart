import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  final BookModel bookModel;

  const BookDetailsView({super.key, required this.bookModel});
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState(bookModel: bookModel);
}

class _BookDetailsViewState extends State<BookDetailsView> {
  final BookModel bookModel;

  _BookDetailsViewState({required this.bookModel});
  @override
  void initState() {
    
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBook(subjec:bookModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BookDetailsViewBody(bookModel: bookModel,),
      ),
    );
  }
}
