import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MediaQueryDemo extends StatefulWidget {
  const MediaQueryDemo({Key? key}) : super(key: key);

  @override
  State<MediaQueryDemo> createState() => _MediaQueryDemoState();
}

class _MediaQueryDemoState extends State<MediaQueryDemo> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("MediaQuery"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: Get.height * .2,
              width: Get.width * .5,
              color: Colors.red,
              child: Center(child: Text("Center")),
            ),
            Container(
              height: Get.height * .2,
              width: Get.width * .6,
              color: Colors.blue,
              child: Center(child: Text("Center")),
            ),
          ],
        ),
      ),
    );
  }
}
