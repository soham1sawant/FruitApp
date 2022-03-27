import 'package:flutter/material.dart';
import 'package:fruit_app/presentation/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/splash_screen_image.png",
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ));
            },
            child: Container(
              height: 75.0,
              width: 300.0,
              decoration: const BoxDecoration(
                color: Color(0xffFFA451),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: const Center(
                  child: Text(
                "Fruit Hub",
                style: TextStyle(
                  fontSize: 50.0,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
