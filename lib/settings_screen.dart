import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_live/counter_controller.dart';
import 'package:getx_live/home_screen.dart';

import 'main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<CounterController>(
                builder: (controller) {
                  return Text(controller.count.toString());
                }
            ),
            TextButton(onPressed: (){
              Get.offAll(HomeScreen());
            }, child: Text("Go to Home"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().IncrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
