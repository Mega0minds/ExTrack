import 'package:extrack/index.dart';
import 'package:flutter/material.dart';

import 'package:extrack/widget/color_extrack.dart';

class LoadEx extends StatelessWidget {
  const LoadEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: MyLoadingWidget(),
        ),
      ),
    );
  }
}

class MyLoadingWidget extends StatefulWidget {
  const MyLoadingWidget({super.key});

  @override
  MyLoadingWidgetState createState() => MyLoadingWidgetState();
}

class MyLoadingWidgetState extends State<MyLoadingWidget> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    // Simulate loading for 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, // Adjust the width of the loading bar
      child: _isLoading
          ? const LinearProgressIndicator(
              minHeight: 25,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              backgroundColor:
                  AppColor.primaryColor, // Background color of the loading bar
              valueColor: AlwaysStoppedAnimation<Color>(
                Colors.blue,
              ), // Color of the filling bar
            )
          : Column(
              children: [
                const SizedBox(
                  height: 220,
                ),
                const Image(
                  image: AssetImage("lib/widget/img/next.png"),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const IndexApp()),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.primaryColor,
                      foregroundColor: AppColor.white,
                      fixedSize: const Size(150, 20),
                    ),
                    child: const Text("Next"),
                  ),
                ),
              ],
            ),
    );
  }
}
