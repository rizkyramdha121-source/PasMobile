import 'package:flutter/material.dart';
import 'package:flutter_pas/component/textField.dart';
import 'package:flutter_pas/component/textField2.dart';
import 'package:flutter_pas/controller/login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SACENG STORE"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            "Log in into SACENG",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: MyTextfield(
              myHint: "username",
              txtController: controller.txtUsername,
              radius: 10,
            ),
          ),

          const SizedBox(height: 20),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: MyTextfield2(
              myHint: "Password",
              txtController: controller.txtPassword,
              radius: 10,
              isPassword: true,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("Forgot your password?"),
            ),
          ),

          const SizedBox(height: 30),

          Obx(
            ()=> controller.isLoading.value
            ? Center(child: CircularProgressIndicator(),)
            : Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              onPressed: () {
                controller.login();
              },
              child: const Text("Loginn uyy"),
            ),
          ),
          ),
          
          const SizedBox(height: 15),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text("Sign up"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}