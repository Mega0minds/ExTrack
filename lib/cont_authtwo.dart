import 'package:flutter/material.dart';

import 'package:extrack/cont_auth.dart';
import 'package:extrack/cont_montly.dart';
import 'package:extrack/cont_weekly.dart';
import 'package:extrack/widget/color_extrack.dart';

class ContAuthTwo extends StatelessWidget {
  const ContAuthTwo({super.key});

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
                "How do u want to track  your expenses",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContWeekly(),
                    ),
                  );
                },
                child: const Text(
                  "weekly",
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
                      builder: (context) => const ContMontly(),
                    ),
                  );
                },
                child: const Text("Monthly"),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContAuth(),
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
