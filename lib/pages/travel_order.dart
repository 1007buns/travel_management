import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/util.dart';

class TravelOrder extends StatefulWidget {
  const TravelOrder({Key? key}) : super(key: key);

  @override
  State<TravelOrder> createState() => _TravelOrderState();
}

class _TravelOrderState extends State<TravelOrder> {
  var _count = 1;
  var a = 354;
  var b = 278;
  var _checkValue = false;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  void _counter() {
    if (_count < 0) {
      setState(() {
        _count = 1;
      });
    }
    {
      setState(() {
        _count++;
      });
    }
  }

  void _counter2() {
    if (_count < 1) {
      setState(() {
        _count = 1;
      });
    }
    {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          '旅游订单',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white12,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Chip(
                label: Text('全部'),
                backgroundColor: Color(0xff008866),
              ),
              Chip(label: Text('待支付')),
              Chip(label: Text('待出行')),
              Chip(label: Text('待点评')),
            ],
          ),
          // const Divider(
          //   color: Colors.black,
          // ),
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Checkbox(
                    activeColor: Colors.red,
                    value: _checkValue,
                    onChanged: (v) {
                      setState(() {
                        _checkValue = !_checkValue;
                      });
                    }),
                _checkValue == true
                    ? Text('总计:${a * _count + b * _count}')
                    : const Text('总计: 0'),
                GestureDetector(
                  onTap: () {
                    SnackBarUtils().tips();
                  },
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: _checkValue == true ? Colors.red : Colors.red[300],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(
                      child: Text(
                        '去购买',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            height: 1,
          ),
          buildTicketCard(
              '西湖售票管理',
              'assets/images/1 (10).jpeg',
              '西湖有100多处公园景点，有“西湖十景”、“新西湖十景”、“三评西湖十景”之说，有60多处国家、省、市级重点文物保护单位和20多座博物馆，有断桥、雷峰塔、钱王祠、净慈寺、苏小小墓等景点。',
              a),
          buildTicketCard(
              '龙门售票管理',
              'assets/images/1 (11).jpeg',
              '龙门古镇修缮保护古民居古厅堂，大力开展区域环境整治行动，山清水秀的自然风光与古朴雅致的古镇风韵成为龙门古镇的特色，2019年龙门古镇被评为浙江省旅游风情小镇。',
              b),
        ],
      ),
    );
  }

  // 购物车栏目
  Widget buildTicketCard(String title, image, subtitle, int price) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
                activeColor: Colors.red,
                value: _checkValue,
                onChanged: (v) {
                  setState(() {
                    _checkValue = !_checkValue;
                  });
                }),
            Icon(Icons.all_inbox_sharp),
            SizedBox(width: 5.0),
            Text('$title'),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Checkbox(
                activeColor: Colors.red,
                value: _checkValue,
                onChanged: (v) {
                  setState(() {
                    _checkValue = !_checkValue;
                  });
                }),
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            SizedBox(
              // color: Colors.black,
              height: 100,
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$subtitle',
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('￥'),
                          Text(
                            '$price',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              _counter2();
                            },
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 50.0),
                            ),
                          ),
                          Chip(
                            label: Text('$_count'),
                          ),
                          GestureDetector(
                            onTap: () {
                              _counter();
                              print('+');
                            },
                            child: const Text(
                              '+',
                              style: TextStyle(fontSize: 30.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
