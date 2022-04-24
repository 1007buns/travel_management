import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:travel_management/commen/controller/login_controller.dart';
import 'package:travel_management/home/home.dart';
import 'package:travel_management/pages/home.dart';

// 登陆注册页面
class Login extends StatelessWidget {
  Login({
    Key? key,
    required this.isShowInputUser,
  }) : super(key: key);

  final LoginController _loginController = Get.put(LoginController());
  bool? isShowInputUser = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const BackButton(color: Colors.black),
        title: isShowInputUser == false
            ? const Text('登录', style: TextStyle(color: Colors.black))
            : const Text('注册', style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                '请输入账号和密码',
                style: TextStyle(fontSize: 30),
              ),
              if (isShowInputUser == true)
                const Text(
                  '请开始创建你的用户',
                  style: TextStyle(fontSize: 30),
                ),
              const SizedBox(height: 30),
              if (isShowInputUser == true)
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: TextField(
                      controller:
                          _loginController.textFieldCreatedUserController.value,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        labelText: '请输入用户名',
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: TextField(
                    controller: _loginController.textFieldUserController.value,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: '请输入账号',
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: TextField(
                    obscureText: true,
                    controller:
                        _loginController.textFieldPasswordController.value,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: '请输入密码',
                      labelStyle: TextStyle(color: Colors.black),
                      prefixIcon: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        child: SlideAction(
                          text: '登录',
                          outerColor: Colors.greenAccent,
                          sliderRotate: false,
                          key: _key,
                          onSubmit: () async {
                            Future.delayed(
                              const Duration(seconds: 1),
                              () => _key.currentState!.reset(),
                            );

                            if (GetUtils.isEmail(_loginController
                                    .textFieldUserController.value.text) ||
                                GetUtils.isNum(_loginController
                                        .textFieldUserController.value.text) &&
                                    GetUtils.isNum(_loginController
                                        .textFieldPasswordController
                                        .value
                                        .text)) {
                              Get.snackbar("登陆成功", "当前未绑定手机号",
                                  backgroundColor: Colors.greenAccent);
                              Get.offAll(() => const HomePage());
                            } else {
                              Get.snackbar("用户名或密码格式错误", "请输入正确的格式",
                                  backgroundColor: Colors.pink);
                            }
                          },
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
