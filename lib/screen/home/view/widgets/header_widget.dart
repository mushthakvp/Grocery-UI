import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../util/assets.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: SizedBox(height: size.height * 0.08)),
        SvgPicture.asset(Assets.carrot),
        SizedBox(height: size.height * 0.02),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.location,
              height: 16,
            ),
            const SizedBox(width: 8),
            const Text(
              "Dhaka, Banassre",
              style: TextStyle(
                color: Color(0xff4c4f4d),
                fontSize: 18,
                fontFamily: "Gilory",
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: size.height * 0.03),
        Container(
          height: size.height * 0.06,
          width: size.width,
          padding: EdgeInsets.symmetric(
            horizontal: size.width * .04,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3F2),
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                Assets.search,
                height: 20,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: const InputDecoration(
                    hintText: "Search Store",
                    hintStyle: TextStyle(
                      fontFamily: "Gilory",
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
