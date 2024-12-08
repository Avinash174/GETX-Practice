import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/login_getx/login_controller.dart';

class LogInWithGetX extends StatefulWidget {
  const LogInWithGetX({super.key});

  @override
  State<LogInWithGetX> createState() => _LogInWithGetXState();
}

class _LogInWithGetXState extends State<LogInWithGetX> {
  LogInController controller = Get.put(LogInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text('Log In GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                hintText: 'Enter Email Adderess',
              ),
            ),
            SizedBox(
              height: Get.height * .025,
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: const InputDecoration(
                hintText: 'Enter Password',
              ),
            ),
            SizedBox(
              height: Get.height * .04,
            ),
            InkWell(
              onTap: () {
                controller.loginApi();
              },
              child: Container(
                height: Get.height * .05,
                color: Colors.orangeAccent,
                child: const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
