import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/Login/login_one.dart';

class LoginHome extends StatefulWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  loginoneController controller = Get.put(loginoneController());

  // @override
  // void initState() {
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: controller.emailController.value,
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: "password"),
            ),
            SizedBox(height: 40),
            Obx(
              () {
                return InkWell(
                  onTap: () {
                    controller.loginApi();
                  },
                  child: controller.loading.value
                      ? CircularProgressIndicator()
                      : Container(
                          height: 50,
                          color: Colors.grey,
                          child: Center(
                            child: Text("Login"),
                          ),
                        ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
