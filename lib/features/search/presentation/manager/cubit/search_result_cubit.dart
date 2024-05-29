import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

import '../../../../home/data/repos/home_repo.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.homeRepo) : super(SearchResultInitial());

  final HomeRepo homeRepo;
  Future<void> fetchSearchResultBooks({required String subject}) async {
    if (subject.length == 0) {
      emit(SearchResultEmpty());
    } else {
      emit(SearchResultLoading());
      var result = await homeRepo.fetchSearchResultBooks(subject: subject);
      result.fold((failure) {
        emit(SearchResultFailure(errMessage: failure.errorMessage));
      }, (books) {
        emit(SearchResultSuccess(books: books));
      });
    }
  }
}
