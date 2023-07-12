import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.onPressed,
    required this.label,
  });
  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: "Gilroy",
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
              Colors.transparent,
            ),
          ),
          onPressed: onPressed,
          child: const Text(
            'See all',
            style: TextStyle(
              color: Color(0xff53B175),
              fontSize: 16,
              fontFamily: "Gilroy",
              fontWeight: FontWeight.w600,
              letterSpacing: .5,
            ),
          ),
        ),
      ],
    );
  }
}
