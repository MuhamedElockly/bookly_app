import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentaion/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/newst_book_cubit/newst_books_cubit.dart';
import 'package:bookly_app/features/home/presentaion/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/splash/presentaion/views/splash_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServiceLocator();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewstBooksCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchNewstBook(),
        ), 
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
