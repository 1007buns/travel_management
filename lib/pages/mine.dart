import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_management/commen/controller/login_controller.dart';
import 'package:travel_management/config/util.dart';

class Mine extends StatelessWidget {
  Mine({Key? key}) : super(key: key);

  final LoginController _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '个人中心',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                SnackBarUtils().tips();
              },
              child: Icon(
                Icons.info,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white12,
        elevation: 0.0,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          buildTopUserdata(
              size, _loginController.textFieldCreatedUserController.value.text),
          buildActivityAndFunctionModule(size),
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              child: Center(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text('这里推荐您绑定'),
                  GestureDetector(
                    onTap: () {},
                    child: GestureDetector(
                      onTap: () {
                        SnackBarUtils().tips();
                      },
                      child: const Text(
                        ' 手机号',
                        style: TextStyle(
                          color: Colors.greenAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }

  /// 活动中心和功能模块
  SliverToBoxAdapter buildActivityAndFunctionModule(Size size) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              // color: Colors.pink,
              height: 80,
              width: size.width,
              // padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      SnackBarUtils().tips();
                    },
                    child: Container(
                      height: 60,
                      width: size.width * 0.45,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('活动中心'),
                              SizedBox(height: 2.0),
                              Text('最新活动都在这里'),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.image),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: () {
                      SnackBarUtils().tips();
                    },
                    child: Container(
                      height: 60,
                      width: size.width * 0.45,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('福利红包'),
                              SizedBox(height: 2.0),
                              Text('领取最新福利'),
                            ],
                          ),
                          const Spacer(),
                          const Icon(Icons.image),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 80,
              width: size.width,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black12,
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/jieshaoxinxi.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(height: 5.0),
                        Text('待支付'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/liebiao.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(height: 5.0),
                        Text('待出行'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/lishijilu.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(height: 5.0),
                        Text('待点评'),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icons/zuanshi.png',
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(height: 5.0),
                        Text('全部订单'),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// 顶部用户数据
  SliverToBoxAdapter buildTopUserdata(Size size, String user) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 180,
          width: size.width,
          decoration: const BoxDecoration(
              // color: Colors.pink,
              ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Colors.greenAccent,
                      ),
                      child: const Icon(
                        Icons.all_inclusive_sharp,
                        size: 50,
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          user,
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(height: 8.0),
                        const Text('介绍：未来可期'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 250,
                margin: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(fontSize: 28),
                        ),
                        Text(
                          '里程',
                          style: TextStyle(fontSize: 12, color: Colors.black45),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(fontSize: 28),
                        ),
                        Text(
                          '优惠卷',
                          style: TextStyle(fontSize: 12, color: Colors.black45),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(fontSize: 28),
                        ),
                        Text(
                          '权益',
                          style: TextStyle(fontSize: 12, color: Colors.black45),
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '0',
                          style: TextStyle(fontSize: 28),
                        ),
                        Text(
                          '足迹',
                          style: TextStyle(fontSize: 12, color: Colors.black45),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
