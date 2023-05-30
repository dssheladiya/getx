import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/example_controller/ExampleOne.dart';

class ExampleHome extends StatefulWidget {
  const ExampleHome({Key? key}) : super(key: key);

  @override
  State<ExampleHome> createState() => _ExampleHomeState();
}

class _ExampleHomeState extends State<ExampleHome> {
  ExampleOneController exampleOneController = Get.put(ExampleOneController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Example Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          children: [
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color:
                    Colors.red.withOpacity(exampleOneController.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                value: exampleOneController.opacity.value,
                onChanged: (value) {
                  exampleOneController.setOpacity(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
