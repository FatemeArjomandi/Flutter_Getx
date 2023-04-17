import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/screens/login.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff154c79),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: const Text(
                  'Register New User',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter your username'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter your name'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your email'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your acont'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Enter your password'),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Confirm password'),
              ),
              const SizedBox(
                height: 55,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 45,
                  width: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 15, color: Color(0xff154c79)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an accont?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () => Get.to(const LoginScreen()),
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
