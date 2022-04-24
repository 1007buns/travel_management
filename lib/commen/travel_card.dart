import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  TravelCard(
      {Key? key,
      required this.width,
      required this.image,
      required this.title,
      required this.tag,
      required this.sales,
      required this.price})
      : super(key: key);

  double width;
  String image, title, tag, sales, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 200,
      margin: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: width,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white30, width: 2.0),
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: width,
            // color: Colors.grey,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(title),
                ),
                const SizedBox(height: 3.0),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                  child: Row(children: [
                    Container(
                        height: 20,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(tag,
                              style: const TextStyle(color: Colors.white)),
                        ))
                  ]),
                ),
                // const SizedBox(height: 6.0),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '￥ $price',
                        style: const TextStyle(
                          color: Colors.pink,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Text(
                        ' 起',
                        style: TextStyle(fontSize: 8.0, color: Colors.grey),
                      ),
                      const Spacer(),
                      Text(
                        ' 销量$sales份',
                        style:
                            const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
