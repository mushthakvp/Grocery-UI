import 'package:flutter/material.dart';
import 'package:grocery/screen/over_view/view/overview.dart';
import '../../model/exclusive_model.dart';

class ExclusiveSection extends StatelessWidget {
  const ExclusiveSection({super.key, required this.data});
  final List<Exclusive> data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .255,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = this.data[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return OverView(data: data, index: index);
              }));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              width: size.width * .4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: const Color(0xffE2E2E2),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Hero(
                    tag: "${data.image}$index",
                    child: Image.asset(
                      data.image,
                      height: 100,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          data.name,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                            fontSize: 16,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 7),
                  Text(
                    data.quantity,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xff7C7C7C),
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 7),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        data.price,
                        style: const TextStyle(
                          fontSize: 17,
                          fontFamily: "Gilroy",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xff53B175),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
