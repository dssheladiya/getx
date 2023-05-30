import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child:
                  //Text(
                  //   "This is next Screen",
                  //   style: TextStyle(color: Colors.purpleAccent, fontSize: 30),
                  // ),
                  Text(
                "${Get.parameters[" someValue"]}",
                style: TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Center(
//             child: Text(
//               "This is next screen",
//               style: TextStyle(fontSize: 30, color: Colors.red),
//             ),
//           ),
