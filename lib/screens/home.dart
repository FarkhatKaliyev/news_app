import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/conrollers/controllers.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
