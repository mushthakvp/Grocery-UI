import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../util/assets.dart';
import '../../home/model/exclusive_model.dart';

class ExploreView extends StatefulWidget {
  const ExploreView({super.key});

  @override
  State<ExploreView> createState() => _ExploreViewState();
}

class _ExploreViewState extends State<ExploreView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Find Products",
          style: TextStyle(
            fontFamily: "Gilroy",
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: size.width * .05,
          vertical: size.height * .02,
        ),
        child: Column(
          children: [
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
            const SizedBox(height: 20),
            GridView.builder(
              itemCount: exploreList.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final data = exploreList[index];
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: data.color.withOpacity(.8),
                    ),
                    color: data.color.withOpacity(.3),
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        data.image,
                        height: 80,
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          data.name,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFamily: "Gilroy",
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
