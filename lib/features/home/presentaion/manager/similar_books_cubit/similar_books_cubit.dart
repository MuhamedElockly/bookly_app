import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentaion/manager/newst_book_cubit/newst_books_cubit.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

   final HomeRepo homeRepo;
  Future<void> fetchSimilarBook({required String subjec}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(subject: subjec);
    result.fold((failure) {
      emit(SimilarBooksFailure( errorMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBooksSuccess(books: books));
    });
  }
}
