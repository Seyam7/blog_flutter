import 'package:flutter/material.dart';

class PostCreateOrUpdateView extends StatelessWidget {
  const PostCreateOrUpdateView({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 10,),
            TextFormField(
              maxLines: 10,
              minLines: 10,
              decoration: InputDecoration(
                hintText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            Text('Thumbnail'),
            SizedBox(height: 2,),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Center(
                    child: Icon(Icons.add),

                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Center(
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Create Post'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
