import 'package:flutter/material.dart';
import '../../model/exclusive_model.dart';

class GroceryFirst extends StatelessWidget {
  const GroceryFirst({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.08,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: groceryList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = groceryList[index];
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 12,
            ),
            width: size.width * 0.5,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: data.color.withOpacity(.4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.asset(
                  data.image,
                  height: size.height * 0.2,
                ),
                SizedBox(width: size.width * 0.03),
                Text(
                  data.name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Gilory",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
