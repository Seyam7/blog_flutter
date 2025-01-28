import 'package:blog_flutter/views/auth/register_screen.dart';
import 'package:blog_flutter/views/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                Get.offAll(()=>HomeScreen());
              },
              child: Text('Login'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: () {
                Get.to(RegisterScreen());
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
