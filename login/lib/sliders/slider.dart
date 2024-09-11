import 'package:flutter/material.dart';
import 'package:login/pages/signup.dart';

class Sliders extends StatefulWidget {
  const Sliders({super.key});

  @override
  State<Sliders> createState() => _SlidersState();
}

class _SlidersState extends State<Sliders> {
  var pageNumber = 0;
  var images = [
    "assets/images/first_slide.png",
    "assets/images/second_slide.png",
    "assets/images/third_slide.png"
  ];
  var titles = [
    "Easy, Fast & Trusted",
    "Free Transactions",
    "Bills Payment        Made Easy"
  ];
  var texts = [
    "Fast money transfer and gauranteed safe transactions with others.",
    "Provides the quality of the financial system with free money transactions without any fees.",
    "Pay monthly or daily bills at home in a site of TransferMe.",
  ];
  var dots = [
    "assets/images/first_dot.png",
    "assets/images/second_dot.png",
    "assets/images/third_dot.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(images[pageNumber]),
          /* --------------------------------- */
          const SizedBox(height: 30),
          /* --------------------------------- */
          SizedBox(
            width: 500,
            child: Text(
              titles[pageNumber],
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          /* --------------------------------- */
          const SizedBox(height: 20),
          /* --------------------------------- */
          SizedBox(
            width: 250,
            child: Text(texts[pageNumber],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                )),
          ),
          /* --------------------------------- */
          const SizedBox(height: 60),
          /* --------------------------------- */
          Image.asset(
            dots[pageNumber],
            scale: 1.5,
          ),
          /* --------------------------------- */
          const SizedBox(height: 30),
          /* --------------------------------- */
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: const Color(0xff4f62bf),
                padding: const EdgeInsets.symmetric(
                  horizontal: 65.0,
                  vertical: 16.0,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                )),
            onPressed: () {
              pageNumber++;
              if (pageNumber > 2) {
                pageNumber = 2;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
                );
              } else {
                setState(() {});
              }
            },
            child: const Text("Continue",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }
}
