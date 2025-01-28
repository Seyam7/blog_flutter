import 'package:blog_flutter/controllers/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostCreateOrUpdateView extends StatelessWidget {
  const PostCreateOrUpdateView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PostController());

    return Scaffold(
      appBar: AppBar(
        title: Text('Create a new post'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              maxLines: 10,
              minLines: 10,
              decoration: InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Thumbnail'),
            SizedBox(
              height: 2,
            ),
            Obx(
                  ()=>InkWell(
                    onTap: () {
                      controller.selectThumbnail();
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        image: controller.thumbnail.value.path.isEmpty
                            ? null
                            : DecorationImage(
                          image: FileImage(controller.thumbnail.value),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Icon(Icons.add),
                      ),
                    ),
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Create Post'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
