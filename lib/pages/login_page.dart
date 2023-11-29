import 'package:bank_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

bool hidden = false;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Login to Continue.",
                  style: GoogleFonts.robotoFlex(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Welcome back",
                  style: GoogleFonts.robotoFlex(
                      fontSize: 20, color: CustomColor.subtitle),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.star,
                  color: CustomColor.bg,
                ),
              ],
            ),
          ),
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Username",
                      border: InputBorder.none,
                      hintStyle:
                          GoogleFonts.robotoFlex(color: CustomColor.subtitle),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextField(
                    obscureText: hidden == true ? true : false,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      hintStyle:
                          GoogleFonts.robotoFlex(color: CustomColor.subtitle),
                      suffixIcon: IconButton(
                        onPressed: () => setState(() {
                          hidden = !hidden;
                        }),
                        icon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 240),
            child: GestureDetector(
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.robotoFlex(
                  color: CustomColor.bg,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => {},
            ),
          ),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: CustomColor.bg,
                    borderRadius: BorderRadius.circular(60)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      "Login",
                      style: GoogleFonts.robotoFlex(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () => {},
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Or continue with",
            style: GoogleFonts.robotoFlex(
                color: CustomColor.subtitle, fontSize: 16),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(60)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.facebook,
                        size: 25,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Continue with Facebook",
                        style: GoogleFonts.robotoFlex(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () => {},
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(60)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.g_mobiledata,
                        size: 25,
                        color: Colors.red,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Continue with Google",
                        style: GoogleFonts.robotoFlex(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              onTap: () => {},
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Not a member?",
                style: GoogleFonts.robotoFlex(
                  fontSize: 16,
                  color: CustomColor.subtitle,
                ),
              ),
              GestureDetector(
                child: Text(
                  " Register Now",
                  style: GoogleFonts.robotoFlex(
                    fontSize: 16,
                    color: CustomColor.bg,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () => {Navigator.pushNamed(context, '/RegisterPage')},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
