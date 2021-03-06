import 'package:flutter/material.dart';
import 'package:fruit_app/presentation/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/splash_screen_image.png",
            width: size.width * 0.95,
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
              height: size.height * 0.10,
              width: size.width * 0.85,
              decoration: const BoxDecoration(
                color: Color(0xffFFA451),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: Center(
                  child: Text(
                "Fruit Hub",
                style: TextStyle(
                  fontSize: size.height * 0.05,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
