import 'package:blog_flutter/utils/config.dart';
import 'package:blog_flutter/views/my_posts/my_posts.dart';
import 'package:blog_flutter/views/post_create_or_update/post_create_or_update.dart';
import 'package:blog_flutter/views/post_details/post_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.appName),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Get.to(()=>MyPostsView());
              },
              icon: Icon(Icons.menu_book),
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.780,
          ),
          itemBuilder: (_,index){
            return InkWell(
              onTap: (){
                Get.to(()=>PostDetailsView());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                      image: DecorationImage(
                        image: NetworkImage('https://www.atatus.com/blog/content/images/2023/01/significance-of-writing-code.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '10 tips for boosting your code readability',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    'Author: Md. Shirajul Islam',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                        color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.to(()=>PostCreateOrUpdateView());
          },
        child: Icon(Icons.add),
      ),
    );
  }
}
