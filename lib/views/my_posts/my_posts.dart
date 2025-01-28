import 'package:blog_flutter/views/post_create_or_update/post_create_or_update.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyPostsView extends StatelessWidget {
  const MyPostsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My post'),
        centerTitle: true,
        scrolledUnderElevation: 0,
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
          itemBuilder: (_,index){
            return Card(
              color: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(
                  color: Colors.black.withOpacity(.1)
                ),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.only(left: 15),
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                title: Text('10 tips to boosting code readability'),
                subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: PopupMenuButton(
                    itemBuilder: (context){
                      return [
                        PopupMenuItem(
                          child: Text('Edit Post'),
                          onTap: (){
                            Get.to(()=>PostCreateOrUpdateView());
                          },
                        ),
                        PopupMenuItem(
                          child: Text('Delete Post'),
                          onTap: (){
                            Get.defaultDialog(
                              title: 'Are you sure?',
                              content: Text('Do you really want to delete this post?'),
                              textConfirm: 'Yes I\'m sure',
                              textCancel: 'Cancel',
                              onConfirm: (){
                                print('post deleted');
                              },
                            );
                          },
                        ),
                      ];
                    },
                  icon: Icon(Icons.more_horiz_outlined),
                ),
              ),
            );
          },
          separatorBuilder: (_,index){
            return SizedBox(height: 10,);
          },
          itemCount: 20,
      ),
    );
  }
}
