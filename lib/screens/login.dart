import 'package:flower/screens/FirstPage.dart';
import 'package:flower/screens/signUp.dart';
import 'package:flower/widget/button.dart';
import 'package:flower/widget/textField.dart'; // Adjusted import for consistency
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand, // Ensures the Stack fills the entire screen
        children: [
          Image.asset(
            'assets/images/background.jpg',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Flower',
                    style: TextStyle(
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 15.0,
                            color: Color(0xFF7d4e57),
                            offset: Offset(6.0, 3.0),
                          ),
                        ],
                        fontSize: 80,
                        fontFamily: 'Gwendolyn',
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 50),
                  textField(
                    Ltext: 'Email',
                    Htext: 'Enter Your Email',
                    iconT: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    isObscure: false,
                  ),
                  SizedBox(height: 25),
                  textField(
                    Ltext: 'Password',
                    Htext: 'Enter Your Password',
                    iconT: Icon(
                      Icons.lock,
                      color: Colors.purple,
                    ),
                    iconS: IconButton(
                      icon: Icon(
                        isObsecure ? Icons.visibility_off : Icons.visibility,
                        color: Colors.purple,
                      ),
                      onPressed: () {
                        setState(() {
                          isObsecure = !isObsecure;
                        });
                      },
                    ),
                    isObscure: isObsecure,
                  ),
                  SizedBox(height: 80),
                  button(
                    text: 'Login',
                    ontap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return Firstpage();
                        }),
                      );
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) {
                              return Signup();
                            }),
                          );
                        },
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFdeaaff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
