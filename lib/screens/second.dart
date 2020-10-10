import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controllers/sumController.dart';

class Second extends GetWidget<SumController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                return Text(
                  "Counter #1: ${controller.count1.value}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Text("                         +"),
            Obx(
              () {
                return Text(
                  "Counter #2: ${controller.count2.value}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            Text("---------------------------------------------"),
            Obx(
              () {
                return Text(
                  "Sum          : ${controller.sumValue}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              child: Text("Increment Counter #1"),
              onPressed: () {
                controller.increment();
              },
            ),
            RaisedButton(
              child: Text("Increment Counter #2"),
              onPressed: () {
                controller.increment2();
              },
            ),
          ],
        ),
      ),
    );
  }
}
