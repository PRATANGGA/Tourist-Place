import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widgets/textformfield_widget.dart';
import 'dasboard_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Lottie.asset('assets/lotties/login.json'),
              TextFormFieldWidget(
                hintText: "Email",
              ),
              SizedBox(height: 20),
              TextFormFieldWidget(
                hintText: "Password",
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DasboardScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(395, 55),
                  backgroundColor: Colors.blue,
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
