part of 'search_result_cubit.dart';

sealed class SearchResultState extends Equatable {
  const SearchResultState();

  @override
  List<Object> get props => [];
}

final class SearchResultInitial extends SearchResultState {}

final class SearchResultLoading extends SearchResultState {}

final class SearchResultSuccess extends SearchResultState {
  SearchResultSuccess({required this.books});
  List<BookModel> books;
}

final class SearchResultFailure extends SearchResultState {
  SearchResultFailure({required this.errMessage});
  String errMessage;
}
