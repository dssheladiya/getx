import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveDemo extends StatefulWidget {
  const ReactiveDemo({Key? key}) : super(key: key);

  @override
  State<ReactiveDemo> createState() => _ReactiveDemoState();
}

class _ReactiveDemoState extends State<ReactiveDemo> {
  final student = Student(name: "tom", age: 20).obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reactive "),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(
                    "Name is ${student.value.name}",
                    style: const TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  student.update((student) {
                    student?.name = student.name.toString().toUpperCase();
                  });
                },
                child: const Text("Upper"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Student {
  var name;
  var age;
  Student({this.name, this.age});
}
