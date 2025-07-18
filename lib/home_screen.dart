import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_live/profile_screen.dart';
import 'package:getx_live/settings_screen.dart';
import 'counter_controller.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder(
                init: counterController,
                builder: (controller) {
                  return Text(
                    "${counterController.count}",
                    style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  );
                }),
            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return ProfileScreen();
                Get.to(ProfileScreen());
              }, child: Text("Go to Profile")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return SettingsScreen();
              // }));
              Get.off(const SettingsScreen());
            }, child: Text("Go to setting")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.IncrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}