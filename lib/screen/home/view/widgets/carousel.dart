import 'dart:async';
import 'package:flutter/material.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  List<String> images = [
    'assets/image/carousel.png',
    'assets/image/carousel.png',
    'assets/image/carousel.png',
    'assets/image/carousel.png',
  ];

  int currentIndex = 0;
  PageController? _pageController;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: currentIndex);
    _startTimer();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (currentIndex < images.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }
      _pageController?.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .15,
      width: size.width * 90,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            onPageChanged: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      images[index],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 7,
            right: 0,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: buildPageIndicator(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> buildPageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < images.length; i++) {
      indicators.add(
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 1),
          width: currentIndex == i ? 14 : 8,
          height: 8,
          decoration: BoxDecoration(
            borderRadius: currentIndex == i ? BorderRadius.circular(8) : null,
            shape: currentIndex == i ? BoxShape.rectangle : BoxShape.circle,
            color: currentIndex == i ? const Color(0xff53B175) : Colors.grey,
          ),
        ),
      );
    }
    return indicators;
  }
}
