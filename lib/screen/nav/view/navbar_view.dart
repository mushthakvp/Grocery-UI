// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/screen/home/view/home_view.dart';
import 'package:grocery/util/assets.dart';
import '../../explore/view/explore_view.dart';

class NavBarView extends StatefulWidget {
  const NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  List<Widget> body = [
    const HomeView(),
    const ExploreView(),
    const HomeView(),
    const ExploreView(),
    const HomeView(),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff53B175),
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.shop,
                color: selectedIndex == 0
                    ? const Color(0xff53B175)
                    : const Color(0xff4c4f4d),
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.explore,
                color: selectedIndex == 1
                    ? const Color(0xff53B175)
                    : const Color(0xff4c4f4d),
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.cart,
                color: selectedIndex == 2
                    ? const Color(0xff53B175)
                    : const Color(0xff4c4f4d),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.favorite,
                color: selectedIndex == 3
                    ? const Color(0xff53B175)
                    : const Color(0xff4c4f4d),
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                Assets.profile,
                color: selectedIndex == 4
                    ? const Color(0xff53B175)
                    : const Color(0xff4c4f4d),
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
