import 'package:flutter/material.dart';
import 'package:extrack/load_ex.dart';
import 'package:extrack/cont_authtwo.dart';
import 'package:extrack/widget/color_extrack.dart';

class ContMontly extends StatelessWidget {
  const ContMontly({super.key});

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
                "How much do you earn monthly",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 40,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 30, right: 30, bottom: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(labelText: "#"),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const ContAuthTwo()),
                          ),
                        );
                      },
                      child: const Text("Back")),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoadEx()));
                      },
                      child: const Text("Done"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
