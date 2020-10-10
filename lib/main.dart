import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/screens/first.dart';

import 'package:getx_statemanagement/controllers/sumController.dart';

void main() {
  Get.lazyPut<SumController>(
      () => SumController()); 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: First(),
    );
  }
}

