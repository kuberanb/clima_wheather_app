import 'package:clima/core/colors.dart';
import 'package:clima/views/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoHome();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBlackColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Clima App',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 0.02 * screenHeight,
                ),
                const CircularProgressIndicator(
                  color: kWhiteColor,
                  strokeWidth: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 Future<void> gotoHome() async {
    await Future.delayed(
      const Duration(milliseconds: 1500), 
    );
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
        ),
        (route) => false);
  }
}
