import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery/screen/home/model/exclusive_model.dart';
import 'package:grocery/screen/home/view/widgets/category_widget.dart';
import 'package:grocery/screen/home/view/widgets/exclusive_section.dart';
import 'widgets/carousel.dart';
import 'widgets/grocery_first.dart';
import 'widgets/header_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * .07,
          ),
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeaderWidget(size: size),
              SizedBox(height: size.height * 0.01),
              const CarouselWidget(),
              SizedBox(height: size.height * 0.01),
              CategoryWidget(
                onPressed: () {},
                label: "Exclusive Offer",
              ),
              SizedBox(height: size.height * 0.02),
              ExclusiveSection(data: exclusive),
              SizedBox(height: size.height * 0.01),
              CategoryWidget(
                onPressed: () {},
                label: "Best Selling",
              ),
              SizedBox(height: size.height * 0.01),
              ExclusiveSection(data: bestSelling),
              SizedBox(height: size.height * 0.01),
              CategoryWidget(
                onPressed: () {},
                label: "Groceries",
              ),
              SizedBox(height: size.height * 0.01),
              GroceryFirst(size: size),
              SizedBox(height: size.height * 0.03),
              ExclusiveSection(data: meatList),
              SizedBox(height: size.height * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
