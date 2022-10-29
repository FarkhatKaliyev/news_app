import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/conrollers/controllers.dart';
import 'package:news_app/widgets/post_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: GetBuilder<PostsController>(
        builder: (controller) {
          return ListView.builder(
            itemCount: controller.postsList.length,
            itemBuilder: (context, index) => PostsListItem(
              post: controller.postsList[index],
            ),
          );
        },
      ),
    );
  }
}
