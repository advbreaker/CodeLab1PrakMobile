// controllers/sw_controllers.dart
import 'dart:async';
import 'package:get/get.dart';
import '../models/sw_models.dart';

class StopwatchController extends GetxController {
  var stopwatch = StopwatchModel(milliseconds: 0).obs;

  Timer? timer;
  bool isRunning = false;


  void startStopwatch() {
    if (!isRunning) {
      isRunning = true;
      timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
        stopwatch.update((val) {
          val?.milliseconds += 100;
        });
      });
    }
  }


  void stopStopwatch() {
    if (isRunning) {
      timer?.cancel();
      isRunning = false;
    }
  }


  void resetStopwatch() {
    stopStopwatch();
    stopwatch.update((val) {
      val?.milliseconds = 0;
    });
  }

  @override
  void onClose() {
    timer?.cancel();
    super.onClose();
  }
}
