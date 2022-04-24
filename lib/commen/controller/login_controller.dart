import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var textFieldCreatedUserController = TextEditingController(text: '明天会更好').obs;
  var textFieldUserController = TextEditingController(text: "123456").obs;
  var textFieldPasswordController = TextEditingController(text: '123456').obs;
  var userName = ''.obs;
  var isShowInputUser = false.obs;
}
