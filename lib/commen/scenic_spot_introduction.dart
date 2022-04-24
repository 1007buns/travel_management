import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_management/commen/travel_card.dart';

// 景区介绍详情页面
class ScenicSpotIntroduction extends StatelessWidget {
  const ScenicSpotIntroduction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          '${Get.arguments}',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.60,
              width: size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white30, width: 2.0),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/1.jpeg'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${Get.arguments}',
                    style: const TextStyle(fontSize: 30),
                  ),
                  const SizedBox(height: 3.0),
                  Padding(
                      padding: const EdgeInsets.only(left: 3.0, top: 3.0),
                      child: Wrap(
                        children: const [
                          RawChip(
                            label: Text('热门'),
                            backgroundColor: Colors.red,
                          ),
                          RawChip(
                            label: Text('优惠'),
                          ),
                          RawChip(
                            label: Text('距离较近'),
                            backgroundColor: Color(0x66000088),
                          ),
                        ],
                      )),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 3.0, left: 3.0, right: 3.0),
                    child: SizedBox(
                      height: 80,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            '门票',
                            style: TextStyle(fontSize: 15.0),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    '￥333',
                                    style: TextStyle(
                                      color: Colors.pink,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Text(
                                    ' 起',
                                    style: TextStyle(
                                        fontSize: 15.0, color: Colors.grey),
                                  ),
                                ],
                              ),
                              const Text(
                                ' 销量3000份',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.grey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              Get.snackbar('您当前未绑定手机号', '绑定手机号才可使用功能模块');
                            },
                            child: Container(
                              height: 70,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(35),
                              ),
                              child: const Icon(
                                Icons.add_business_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
