import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/Navigation/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This is home Screen",
              style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Next Screen", style: TextStyle(fontSize: 20)),
              onPressed: () {
                Get.to("/ScreenTwo/1234");
              },
            ),
            ElevatedButton(
              child: Text("Back to Main", style: TextStyle(fontSize: 20)),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(height: 10),
            // Text(
            //   "${Get.arguments}",
            //   style: TextStyle(color: Colors.green, fontSize: 20),
            // ),
            Text(
              "Channel name is ${Get.parameters["channel"]} and content is ${Get.parameters["channel"]}",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

//+ Get.arguments[1]
