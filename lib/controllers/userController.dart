import 'package:get/state_manager.dart';
import 'package:getx_statemanagement/models/user.dart';

class UserController extends GetxController {
  final user = User().obs;

  updateUser(int count) {
    user.update((val) {
      val.name = "Shawn";
      val.count = count;
    });
  }
}