import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PostController extends GetxController{

  var thumbnail = File('').obs;//value will be change at runtime that's why obs has been used

  void selectThumbnail() async{
    final pick = await ImagePicker().pickImage(
        source: ImageSource.gallery,
    );
    if(pick!=null){
      thumbnail.value = File(pick.path);
      update();
    }
  }
}