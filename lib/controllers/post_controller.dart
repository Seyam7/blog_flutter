import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class PostController extends GetxController{

  var thumbnail = File('').obs;//value will be change at runtime that's why obs has been used

  final formKey = GlobalKey<FormState>();

  final title = TextEditingController();
  final description = TextEditingController();

  void selectThumbnail() async{
    final pick = await ImagePicker().pickImage(
        source: ImageSource.gallery,
    );
    if(pick!=null){
      thumbnail.value = File(pick.path);
      update();
    }
  }

  void createPost()async{
    if(formKey.currentState!.validate()){
      print('create post function is called');
    }
  }
}