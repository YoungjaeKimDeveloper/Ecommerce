import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:ecommerce/pages/home_page.dart";

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void Function() onChange = () {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Logo
          Image.asset("lib/images/logo.jpg", height: 400),
          // Title
          Expanded(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Text(
                    "Just do It",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.spaceMono().copyWith(
                      color: Colors.grey[500],
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // sub title
                  SizedBox(height: 20),
                  Text(
                    "Brand new sneakers and custion kicks made with premium quality",
                    style: GoogleFonts.eczar().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      color: Colors.grey[400],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  // start now button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: GestureDetector(
                        onTap:
                            () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            ),
                        child: const Text(
                          "Shop New",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
