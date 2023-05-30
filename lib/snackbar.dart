import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Snavc extends StatefulWidget {
  const Snavc({Key? key}) : super(key: key);

  @override
  State<Snavc> createState() => _SnavcState();
}

class _SnavcState extends State<Snavc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Getx Tutorials")),
      body: SafeArea(
        child: Column(children: const []),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "denish",
            "sheladiya",
            icon: const Icon(Icons.add),
            onTap: (snap) {},
            mainButton:
                TextButton(onPressed: () {}, child: const Text("Click")),
            backgroundColor: Colors.white54,
            snackPosition: SnackPosition.BOTTOM,
            overlayColor: Colors.black12,
            // userInputForm: Form(
            //   child: Expanded(
            //     child: TextField(),
            //   ),
            // ),
          );
        },
      ),
    );
  }
}
