import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_management/commen/login.dart';

import '../config/util.dart';

/// 搜索模块
class SliverSearchBar extends StatelessWidget {
  const SliverSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SliverAppBar(
      elevation: 0.0,
      centerTitle: true,
      pinned: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              SnackBarUtils().tips();
            },
            child: Container(
              height: 45,
              margin: const EdgeInsets.all(8.0),
              width: size.width * 0.72,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        print('hhhhhhh');
                      },
                      child: const Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.greenAccent,
                    ),
                    width: 50,
                    child: const Center(
                      child: Text(
                        '搜索',
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.add_location_alt_outlined,
              size: 30,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
