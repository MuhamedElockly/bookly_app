import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentaion/views/widgets/book_ratin.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  final BookModel bookModel;

  const BookListViewItem({super.key, required this.bookModel});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kBooKDetailsView);
      },
      child: SizedBox(
        height: 150,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 2.5 / 4,
                child: CachedNetworkImage(
                  imageUrl:
                      bookModel.volumeInfo!.imageLinks!.thumbnail.toString(),
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
            SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    bookModel.volumeInfo!.authors![0],
                    style:
                        Styles.textStyle14.copyWith(color: Color(0xff707070)),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      BookRating(
                        averageRating: bookModel.volumeInfo!.averageRating ?? 0,
                        ratingCount: bookModel.volumeInfo!.ratingCount ?? 0,
                        mainAxisAlignment: MainAxisAlignment.end,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
