import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/repos/home_repo.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.homeRepo) : super(SearchResultInitial());
 
   final HomeRepo homeRepo;
  Future<void> fetchResultBook({required String subjec}) async {
    emit(SearchResultLoading());
    var result = await homeRepo.fetchSimilarBooks(subject: subjec);
    result.fold((failure) {
      emit(SearchResultFailure( errMessage: failure.errorMessage));
    }, (books) {
      emit(SearchResultSuccess(books: books));
    });
  }
}
