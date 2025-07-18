import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_live/counter_controller.dart';

import 'main.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
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
              //Navigator.pop(context);
              Get.back();
            }, child: Text("Back"))
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
