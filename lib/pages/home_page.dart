import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomColor {
  static const Color bg = Color.fromRGBO(162, 58, 241, 1);
  static const Color subtitle = Color.fromARGB(255, 160, 157, 157);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.bg,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(color: CustomColor.bg),
              child: const Image(
                alignment: Alignment.center,
                image: AssetImage("images/card_1.png"),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Text(
                        "Deal with your money,",
                        style: GoogleFonts.robotoFlex(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    "Manage your life",
                    style: GoogleFonts.robotoFlex(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(right: 0),
                    child: Text(
                      "The more your cash work for you save life,",
                      style: GoogleFonts.robotoFlex(
                          fontSize: 16, color: CustomColor.subtitle),
                    ),
                  ),
                  Text(
                    "the less you need to work for cash",
                    style: GoogleFonts.robotoFlex(
                        fontSize: 16, color: CustomColor.subtitle),
                  ),
                  const SizedBox(height: 100),
                  Padding(
                    padding: const EdgeInsets.only(left: 110, right: 110),
                    child: Container(
                      decoration: BoxDecoration(
                        color: CustomColor.bg,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: GestureDetector(
                            child: Text(
                              "Let's Start",
                              style: GoogleFonts.robotoFlex(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () => {
                              Navigator.pushNamed(context, '/LoginPage'),
                            },
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
