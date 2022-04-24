import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';
import 'package:travel_management/commen/login.dart';

// 欢迎页面
class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        controllerColor: Colors.greenAccent,
        finishButtonColor: Colors.greenAccent,
        onFinish: () {
          Get.to(() => Login(
                isShowInputUser: true,
              ));
        },
        headerBackgroundColor: Colors.white,
        finishButtonText: '注册',
        skipTextButton: const Text('跳过'),
        trailing: InkWell(
          onTap: () {
            Get.to(() => Login(isShowInputUser: false));
          },
          child: const Text(
            '登录',
            style: TextStyle(color: Colors.greenAccent, fontSize: 20),
          ),
        ),
        background: [
          Container(color: Colors.white),
          // Container(color: Colors.white),
          // Image.asset('assets/images/welcome01.jpeg'),
          // Image.asset('assets/images/welcome01.jpeg'),
        ],
        totalPage: 1,
        speed: 1.8,
        pageBodies: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text('欢迎', style: TextStyle(fontSize: 50.0)),
            ],
          ),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 40),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: const <Widget>[
          //       Text('开始', style: TextStyle(fontSize: 50)),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
