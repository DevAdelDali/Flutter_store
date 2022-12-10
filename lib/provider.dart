import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyProvider with ChangeNotifier {
  bool isLight() {
    return SchedulerBinding.instance.window.platformBrightness ==
        Brightness.light;
  }
}
