import 'package:flutter/material.dart';
import 'package:travel_management/commen/sliver_search_bar.dart';
import 'package:travel_management/commen/travel_card.dart';

/// 目的地页面
class Destination extends StatelessWidget {
  Destination({Key? key}) : super(key: key);

  final List<String> _images = [
    'assets/images/1 (1).jpeg',
    'assets/images/1.jpeg',
    'assets/images/1 (2).jpeg',
    'assets/images/1 (3).jpeg',
    'assets/images/1 (4).jpeg',
    'assets/images/1 (5).jpeg',
    'assets/images/1 (6).jpeg',
    'assets/images/1 (7).jpeg',
    'assets/images/1 (8).jpeg',
    'assets/images/1 (9).jpeg',
    'assets/images/1 (10).jpeg',
    'assets/images/1 (11).jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '出行',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white12,
        elevation: 0.0,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverSearchBar(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 35.0, bottom: 20.0),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/1 (6).jpeg'),
                  ),
                ),
                child: const Center(
                  child: Text(
                    '美好的事情即将发生',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ),
          buildTravelList(size),
          const SliverAppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            pinned: true,
            title: Text(
              '推荐',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                TravelCard(
                  width: size.width - 30,
                  image: 'assets/images/1 (1).jpeg',
                  title: '景区介绍',
                  tag: '热门',
                  sales: '3500',
                  price: '2799',
                ),
                TravelCard(
                  width: size.width - 30,
                  image: 'assets/images/1 (2).jpeg',
                  title: '景区介绍',
                  tag: '热门',
                  sales: '3500',
                  price: '2799',
                ),
                TravelCard(
                  width: size.width - 30,
                  image: 'assets/images/1 (3).jpeg',
                  title: '景区介绍',
                  tag: '热门',
                  sales: '3500',
                  price: '2799',
                ),
                TravelCard(
                  width: size.width - 30,
                  image: 'assets/images/1 (4).jpeg',
                  title: '景区介绍',
                  tag: '热门',
                  sales: '3500',
                  price: '2799',
                ),
                TravelCard(
                  width: size.width - 30,
                  image: 'assets/images/1 (5).jpeg',
                  title: '景区介绍',
                  tag: '热门',
                  sales: '3500',
                  price: '2799',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // 出行模块
  SliverToBoxAdapter buildTravelList(Size size) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '出行',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8.0),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 12,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(_images[index]),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      child: Column(
                        children: [
                          Text(
                            '${index + 1}月',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text(
                            '儿童节',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                margin: const EdgeInsets.only(left: 8.0),
                width: size.width * 0.35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/1 (4).jpeg'),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 220,
                width: size.width * 0.60,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/1 (5).jpeg')),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/1 (6).jpeg')),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/1 (7).jpeg')),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/1 (8).jpeg')),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/1 (5).jpeg')),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(8),
                                      topLeft: Radius.circular(8),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/1 (6).jpeg')),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/1 (7).jpeg')),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 60,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'assets/images/1 (8).jpeg')),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(8),
                                          topLeft: Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  height: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text('西安'),
                                      Text(
                                        '25442人推荐',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
