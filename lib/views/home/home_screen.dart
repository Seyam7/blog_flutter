import 'package:blog_flutter/utils/config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConfig.appname),
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
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
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){

          },
        child: Icon(Icons.add),
      ),
    );
  }
}
