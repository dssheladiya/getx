import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tutorials extends StatelessWidget {
  const Tutorials({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation "),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              child: Text("Go to home"),
              onPressed: () {
                // Get.toNamed("/screenOne");
                Get.toNamed("/x");
                // Get.to(
                //   ScreenOne(),
                //   arguments: "Data from ",
                // );
                // var data = await Get.to(ScreenOne());
                // print("The Received data is $data");
              },
            ),
          ),
        ],
      ),
    );
  }
}
