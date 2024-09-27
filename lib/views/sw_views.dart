// views/stopwatch_view.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/sw_controllers.dart';

class StopwatchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final StopwatchController controller = Get.put(StopwatchController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              // Format the milliseconds into seconds and display
              int seconds = (controller.stopwatch.value.milliseconds / 1000).floor();
              return Text(
                'Time: $seconds seconds',
                style: TextStyle(fontSize: 30),
              );
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: controller.startStopwatch,
                  child: Text('Start'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.stopStopwatch,
                  child: Text('Stop'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.resetStopwatch,
                  child: Text('Reset'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
