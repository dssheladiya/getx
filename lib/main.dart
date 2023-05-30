import 'package:flutter/material.dart';
import 'package:getx/View/add_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoAdd(),
    );
  }
}
// home: ReactiveDemo(),
//       getPages: [
//         GetPage(name: "/", page: () => Tutorials()),
//         GetPage(name: "/screenOne", page: () => ScreenOne()),
//         GetPage(name: "/screenTwo/:someValue",
// transition: Transition.leftToRight)
//unknownRoute: GetPage(name: "/notfound", page: () => ScreenThree()),
