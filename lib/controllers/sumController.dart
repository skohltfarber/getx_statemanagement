import 'package:get/state_manager.dart';

class SumController extends GetxController {
  final count1 = 0.obs;
  final count2 = 0.obs;

  void increment() => count1.value++;
  void increment2() => count2.value++;

  int get sumValue {
    return this.count1.value + this.count2.value;
  }

  @override
  void onInit() {
    ever(count1, (_) => print("Count1 has been changed."));
    once(count1, (_) => print("First time count1 is changed."));
    debounce(count1, (_) => print("Count1 hasn't been changed for 1s."), time: Duration(seconds: 1));
    interval(count1, (_) => print("Every 1 second count1 is changed."), time: Duration(seconds: 1));
    }
}
