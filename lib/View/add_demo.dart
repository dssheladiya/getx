import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/Demo_controller.dart';

class DemoAdd extends StatefulWidget {
  const DemoAdd({Key? key}) : super(key: key);

  @override
  State<DemoAdd> createState() => _DemoAddState();
}

class _DemoAddState extends State<DemoAdd> {
  DemoController demoController = Get.put(DemoController());

  Future getData() async {
    Future.delayed(const Duration(seconds: 2));
    return DemoController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            TextField(
              controller: demoController.controller,
              //keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                constraints: BoxConstraints(maxWidth: 275),
                labelText: 'enter text',
              ),
            ),
            GetBuilder<DemoController>(
              builder: (controller) => Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.demo();
                    },
                    child: Text("add"),
                  ),
                  FutureBuilder(
                    future: getData(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.allNumber.length,
                          itemBuilder: (context, index) {
                            return Text('${controller.allNumber[index]}');
                          },
                        );
                      } else {
                        return const CircularProgressIndicator();
                      }
                    },
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                demoController.allNumber.clear();
              },
              child: const Text("clear"),
            ),
          ],
        ),
      ),
    );
  }
}
