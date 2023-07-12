import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/screen/home/model/exclusive_model.dart';
import 'package:grocery/util/assets.dart';

class OverView extends StatefulWidget {
  const OverView({
    super.key,
    required this.data,
    required this.index,
  });
  final Exclusive data;
  final int index;

  @override
  State<OverView> createState() => _OverViewState();
}

class _OverViewState extends State<OverView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const Image(
                    image: AssetImage("assets/icons/header.png"),
                  ),
                  SafeArea(
                    child: Row(
                      children: [
                        const SizedBox(width: 12),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/share.svg"),
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: size.height * 0.13),
                      Center(
                        child: Hero(
                          tag: "${widget.data.image}${widget.index}}",
                          child: Image(
                            image: AssetImage(
                              widget.data.image,
                            ),
                            height: 150, // Adjust the desired height here
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    left: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: buildPageIndicator(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.015),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.data.name,
                          style: const TextStyle(
                            fontSize: 22,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(Assets.favorite),
                        ),
                      ],
                    ),
                    Text(
                      widget.data.quantity,
                      style: const TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontFamily: "Gilory",
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                              child: const Center(
                                child: Text("1"),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.data.price,
                          style: const TextStyle(
                            fontSize: 22,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Divider(
                      color: Colors.black.withOpacity(.3),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      children: [
                        const Text(
                          "Product Details",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/down.svg"),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.015),
                    const Text(
                      "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healthful and varied diet.",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Gilory",
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        color: Color(0xff7C7C7C),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                    Divider(
                      color: Colors.black.withOpacity(.3),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: [
                        const Text(
                          "Nutrition Facts",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text("100 gr"),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/down.svg"),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Divider(
                      color: Colors.black.withOpacity(.3),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: [
                        const Text(
                          "Review",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset("assets/icons/star.svg"),
                        IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/down.svg"),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black.withOpacity(.3),
                    ),
                    SizedBox(height: size.height * 0.02),
                    SizedBox(
                      height: size.height * 0.07,
                      width: size.width,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff53B175),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          "Add to Basket",
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Gilory",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.015),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      indicators.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          width: widget.index == i ? 14 : 8,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: widget.index == i ? BorderRadius.circular(8) : null,
            shape: widget.index == i ? BoxShape.rectangle : BoxShape.circle,
            color: widget.index == i ? const Color(0xff53B175) : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
