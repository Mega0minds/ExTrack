import 'package:flutter/material.dart';

import 'package:extrack/bvn_ex.dart';
import 'package:extrack/cont_authtwo.dart';
import 'package:extrack/log_in.dart';
import 'package:extrack/widget/color_extrack.dart';

void main() {
  runApp(const ContAuth());
}

class ContAuth extends StatelessWidget {
  const ContAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              const Text(
                "ExTrack",
                style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 30,
                  fontWeight: AppWeight.mainweight,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Choose any of the options",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BvnEx()),
                  );
                },
                child: const Text(
                  "Track using BVN (Recommended)",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContAuthTwo(),
                      ),
                    );
                  },
                  child: const Text("Track without BVN")),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text("Back"))
            ],
          ),
        ),
      ),
    );
  }
}
