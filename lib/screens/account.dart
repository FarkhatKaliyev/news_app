import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/conrollers/controllers.dart';

class AccountPage extends GetView<AccountController> {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text("Counter ${controller.counter.value}")),
            ElevatedButton(
              child: const Text("Increase"),
              onPressed: () => controller.increaseCounter(),
            )
          ],
        ),
      ),
    );
  }
}
