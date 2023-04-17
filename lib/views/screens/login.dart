import 'package:flutter/material.dart';
import 'package:flutter_application_2/views/screens/register.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff154c79),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/parking.png',
                  fit: BoxFit.cover,
                  width: 180,
                  height: 190,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Username',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter a username'),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Password',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(
                height: 25,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                    hintText: 'Enter a password'),
              ),
              const SizedBox(
                height: 55,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  height: 45,
                  width: 90,
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15, color: Color(0xff154c79)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an accont?',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(const RegisterScreen());
                    },
                    child: const Text(
                      ' Register',
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
