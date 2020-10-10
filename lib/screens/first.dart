import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagement/controllers/countController.dart';
import 'package:getx_statemanagement/controllers/userController.dart';
import 'package:getx_statemanagement/screens/second.dart';

class First extends StatelessWidget {
  // final CountController countController = Get.put(CountController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX | State Management"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CountController>(
              init: CountController(),
              builder: (_) {
                return Text("Current Count Value: ${_.count}");
              },
            ),
            SizedBox(
              height: 40,
            ),
            GetX<UserController>(
              init: UserController(),
              builder: (_) {
                return Text("Name: ${_.user.value.name}");
              },
            ),
            Obx(() {
              return Text(
                  "Count: ${Get.find<UserController>().user.value.count}");
            }),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              child: Text("Update Name & Stored Count"),
              onPressed: () {
                Get.find<UserController>().updateUser(
                    Get.find<CountController>().count);
              },
            ),
            SizedBox(
              height: 120,
            ),
            RaisedButton(
              child: Text("Next Screen"),
              onPressed: () {
                Get.to(Second());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.find<CountController>().increment();
        },
      ),
    );
  }
}
