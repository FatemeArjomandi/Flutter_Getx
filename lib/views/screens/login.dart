import 'package:flutter/material.dart';

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
                'Username',
                style: TextStyle(fontSize: 20, color: Colors.white) 
              ),
              const SizedBox(height: 30,),
              const TextField( 
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                  hintText: 'Enter a username'
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
