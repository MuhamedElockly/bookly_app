import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  final String errorMessage;

  const CustomError({super.key, required this.errorMessage});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        errorMessage,
        style: Styles.textStyle18,
      ),
    );
  }
}
