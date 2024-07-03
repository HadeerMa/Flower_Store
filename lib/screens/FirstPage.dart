import 'package:flower/screens/login.dart';
import 'package:flower/screens/signUp.dart';
import 'package:flower/widget/button.dart';
import 'package:flutter/material.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF614E8D),
              Colors.black, // You can add more colors if needed
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *
                  0.25, // 30% of screen height
              child: Image.asset(
                'assets/images/new-flower (3).png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
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
            const SizedBox(
              height: 30,
            ),
            button(
              text: "Login",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return Login();
                  }),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            button(
              text: "Signup",
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return Signup();
                  }),
                );
              },
            ),
            Spacer(), // This will push the bottom image to the bottom of the screen

            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height *
                  0.25, // 30% of screen height
              child: Image.asset(
                'assets/images/new-flower (2).png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
