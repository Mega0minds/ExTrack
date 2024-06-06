import 'package:flutter/material.dart';

import 'package:extrack/cont_auth.dart';
import 'package:extrack/log_in.dart';
import 'package:extrack/widget/color_extrack.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 120),
                child: const Text(
                  "ExTrack...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 30,
                    fontWeight: AppWeight.mainweight,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 30, right: 30, bottom: 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 1,
                                color: AppColor.primaryColor,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: AppColor.primaryColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: AppColor.primaryColor),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.only(bottom: 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Confirm Password",
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: AppColor.primaryColor),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ContAuth(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(280, 10),
                              backgroundColor: AppColor.primaryColor),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, './LoginUp');
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Login(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(color: AppColor.primaryColor),
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
        ),
      ),
    );
  }
}
