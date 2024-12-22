import 'package:flutter/material.dart';
import 'package:get/get.dart';

import "package:venomous_app_chat/app.dart";
import 'package:venomous_app_chat/common/global_controllers/_index.dart'
    as global_controllers;

void main() {
  Get.put(global_controllers.ThemeController());

  runApp(const MyApp());
}
