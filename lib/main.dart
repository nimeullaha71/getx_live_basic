import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_live/counter_controller.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}


class ControllerBinder extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=>CounterController());
  }

}




