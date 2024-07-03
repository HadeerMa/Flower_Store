import 'package:flower/screens/homepage.dart';
import 'package:flower/widget/TextField.dart';
import 'package:flower/widget/button.dart';
import 'package:flower/widget/profile.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

bool isObsecure = true;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/background.jpg',
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40, // Adjust the top position as needed
                left: 10, // Adjust the left position as needed
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    weight: 50,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 158,
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Column(
                        children: [
                          PickImage(),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Account Info',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              textField(
                                isObscure: false,
                                Htext: 'Enter Your Name',
                                Ltext: 'Name',
                                iconT: Icon(
                                  Icons.person,
                                  color: Colors.purple,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              textField(
                                isObscure: false,
                                Htext: 'Enter Your Email',
                                Ltext: 'Email',
                                iconT: Icon(
                                  Icons.email,
                                  color: Colors.purple,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              textField(
                                Ltext: 'Password',
                                Htext: 'Enter Your Password',
                                iconT: Icon(
                                  Icons.lock,
                                  color: Colors.purple,
                                ),
                                iconS: IconButton(
                                  icon: Icon(
                                    isObsecure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.purple,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isObsecure = !isObsecure;
                                    });
                                  },
                                ),
                                isObscure:
                                    isObsecure, // Pass the correct value here
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              textField(
                                Ltext: 'Confirm Password',
                                Htext: 'Confirm Your Password',
                                iconT: Icon(
                                  Icons.lock,
                                  color: Colors.purple,
                                ),
                                iconS: IconButton(
                                  icon: Icon(
                                    isObsecure
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: Colors.purple,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      isObsecure = !isObsecure;
                                    });
                                  },
                                ),
                                isObscure:
                                    isObsecure, // Pass the correct value here
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              button(
                                  text: "Save",
                                  ontap: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return Homepage();
                                    }));
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
