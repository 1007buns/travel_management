import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:travel_management/commen/travel_card.dart';

import '../commen/scenic_spot_introduction.dart';
import '../commen/sliver_search_bar.dart';
import '../config/util.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  /// 定义景区名称数据
  final List<String> _title = [
    '西湖',
    '龙门',
    '天安门',
    '少林寺',
    '老君山',
    '白马寺',
  ];
  final List<String> featureListIcon = [
    'assets/icons/align-left.png',
    'assets/icons/box.png',
    'assets/icons/calendar-alt.png',
    'assets/icons/database-set.png',
    'assets/icons/flag.png',
    'assets/icons/folder-open.png',
    'assets/icons/layer-group.png',
    'assets/icons/map.png',
    'assets/icons/position.png',
    'assets/icons/shouye.png',
    'assets/icons/wode.png',
  ];

  final List<String> iconTitle = [
    '酒店',
    '火车票',
    '旅游',
    '活动',
    '攻略',
    '民宿',
    '包车',
    '汽车',
    '门票',
    '购物',
  ];

  final List<String> images = [
    'assets/images/1 (1).jpeg',
    'assets/images/1 (2).jpeg',
    'assets/images/1 (3).jpeg',
    'assets/images/1 (4).jpeg',
    'assets/images/1 (5).jpeg',
    'assets/images/1 (6).jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '旅游',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          buildSwiperBanner(size),
          buildFeatureList(size),
          buildSliverSearchBar(size),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                '热门推荐',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          buildSliverListRecommended(size),
        ],
      ),
    );
  }

  /// 热门推荐
  SliverList buildSliverListRecommended(Size size) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const ScenicSpotIntroduction(),
                          arguments: _title[0]);
                    },
                    child: Container(
                      height: 150,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white30, width: 2.0),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: size.width * 0.43,
                    // color: Colors.grey,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.0),
                          child: Text(_title[index]),
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
                                child: const Center(
                                  child: Text('热门',
                                      style: TextStyle(color: Colors.white)),
                                ))
                          ]),
                        ),
                        // const SizedBox(height: 6.0),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 3.0, left: 3.0, right: 3.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '￥${index + 1 * 568}',
                                style: const TextStyle(
                                  color: Colors.pink,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Text(
                                ' 起',
                                style: TextStyle(
                                    fontSize: 8.0, color: Colors.grey),
                              ),
                              Spacer(),
                              Text(
                                ' 销量${index * 237}份',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              // Spacer(),
              const SizedBox(
                width: 20.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(const ScenicSpotIntroduction(),
                          arguments: _title[1]);
                    },
                    child: Container(
                      height: 150,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white30, width: 2.0),
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(images[index += 1]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: size.width * 0.43,
                    // color: Colors.grey,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.0),
                          child: Text(_title[index + 1]),
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
                                child: const Center(
                                  child: Text('热门',
                                      style: TextStyle(color: Colors.white)),
                                ))
                          ]),
                        ),
                        // const SizedBox(height: 6.0),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 3.0, left: 3.0, right: 3.0),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '￥${index += 1 * 357}',
                                style: const TextStyle(
                                  color: Colors.pink,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const Text(
                                ' 起',
                                style: TextStyle(
                                    fontSize: 8.0, color: Colors.grey),
                              ),
                              Spacer(),
                              const Text(
                                ' 销量${326}份',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }, childCount: 3),
    );
  }

  // 'assets/images/1.jpeg'
  /// 首页轮播图
  SliverToBoxAdapter buildSwiperBanner(Size size) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AspectRatio(
          aspectRatio: 2.5,
          child: Swiper.children(
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                  color: Colors.white.withOpacity(0.38),
                  activeColor: Colors.blueAccent,
                  size: 7.0,
                  activeSize: 10.0,
                  space: 2.0,
                ),
              ),
              autoplay: true,
              physics: const BouncingScrollPhysics(),
              children: images
                  .map(
                    (e) => GestureDetector(
                      onTap: () {
                        SnackBarUtils().tips();
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }

  /// 功能列表模块
  SliverToBoxAdapter buildFeatureList(Size size) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          height: 150,
          width: size.width,
          decoration: BoxDecoration(
            // color: Colors.pink,
            borderRadius: BorderRadius.circular(15),
          ),
          child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      highlightColor: Colors.greenAccent,
                      onTap: () {
                        SnackBarUtils().tips();
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(featureListIcon[index]))),
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(iconTitle[index])
                  ],
                );
              }),
        ),
      ),
    );
  }

  /// search bar 搜索栏
  SliverSearchBar buildSliverSearchBar(Size size) {
    return const SliverSearchBar();
  }
}
