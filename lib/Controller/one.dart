import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/Controller/counter_controller.dart';

class OneHome extends StatefulWidget {
  const OneHome({Key? key}) : super(key: key);

  @override
  State<OneHome> createState() => _OneHomeState();
}

class _OneHomeState extends State<OneHome> {
  final CounterController controller = Get.put(CounterController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controller"),
      ),
      body: Center(
        child: Obx(() => Text(
              controller.counter.toString(),
              style: TextStyle(fontSize: 50),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
