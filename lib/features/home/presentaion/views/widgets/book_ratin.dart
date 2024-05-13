import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment, required this.ratingCount, required this.averageRating});
  final MainAxisAlignment mainAxisAlignment;
  final num ratingCount;
  final num averageRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 14,
        ),
        Text(
          averageRating.toString(),
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '($ratingCount)',
          style: Styles.textStyle14.copyWith(color: Color(0xff707070)),
        )
      ],
    );
  }
}
