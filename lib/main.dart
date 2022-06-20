import 'package:chasier/constant.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/onboarding_image.png",
            width: size.width,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Text(
            "Digital Cashier",
            style: bold36(primaryBlack),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            child: Text(
              "Let’s make your selling activities easier with digital cashier!",
              style: regular16(Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.03,
            ),
            width: size.width,
            height: 55,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get Started",
                style: semiBold16(primaryWhite),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  primary: primaryTosca,
                  elevation: 3),
            ),
          )
        ],
      ),
    );
  }
}
