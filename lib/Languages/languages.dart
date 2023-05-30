import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageDemo extends StatefulWidget {
  const LanguageDemo({Key? key}) : super(key: key);

  @override
  State<LanguageDemo> createState() => _LanguageDemoState();
}

class _LanguageDemoState extends State<LanguageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("message".tr),
            subtitle: Text("name".tr),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("en", "us"));
                  },
                  child: Text("English")),
              SizedBox(width: 20),
              OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale("ur", "pk"));
                  },
                  child: Text("urdu"))
            ],
          ),
        ],
      ),
    );
  }
}
