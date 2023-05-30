import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultDialog extends StatefulWidget {
  const DefaultDialog({Key? key}) : super(key: key);

  @override
  State<DefaultDialog> createState() => _DefaultDialogState();
}

class _DefaultDialogState extends State<DefaultDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dialog")),
      body: SafeArea(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text("Getx dialog"),
                subtitle: const Text("Getx dialog alert"),
                onTap: () {
                  Get.defaultDialog(
                    title: "Delete chat",
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText: "Are you suer you delete this chat?",
                    confirm: TextButton(
                        onPressed: () {
                          //  Navigator.pop(context);
                          Get.back();
                        },
                        child: const Text("ok")),
                    cancel: TextButton(
                        onPressed: () {}, child: const Text("cancel")),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Light Theme "),
                subtitle: const Text("Dark Theme"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                            },
                            leading: const Icon(Icons.light_mode),
                            title: const Text("Light Theme"),
                          ),
                          ListTile(
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                            },
                            leading: const Icon(Icons.dark_mode),
                            title: const Text("Dark Theme"),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
