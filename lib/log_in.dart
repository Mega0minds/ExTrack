import 'package:flutter/material.dart';

import 'package:extrack/load_ex.dart';
import 'package:extrack/sign_up.dart';
import 'package:extrack/widget/color_extrack.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LogInState();
}

@override
Widget build(BuildContext context) {
  return const MaterialApp(
    home: Login(),
  );
}

class _LogInState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
                      fontWeight: AppWeight.mainweight),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 50, left: 30, right: 30, bottom: 10),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            labelText: "Password",
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
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(top: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState != null &&
                                _formKey.currentState!.validate()) {
                               {}
                            } else{
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoadEx(),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              fixedSize: const Size(280, 10),
                              backgroundColor: AppColor.primaryColor),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: AppColor.white,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have an account?"),
                          TextButton(
                            onPressed: () {
                              // Navigator.pushNamed(context, './LoginUp');
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUp(),
                                ),
                              );
                            },
                            child: const Text(
                              "SignUp",
                              style: TextStyle(
                                color: AppColor.primaryColor,
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
        ),
      ),
    );
  }
}
