import 'package:flutter/material.dart';
//import 'package:flutter/gestures.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'utils.dart';
import 'package:get/get.dart';
import 'homepage.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Signup_bdy(),
    );
  }
}

class Signup_bdy extends StatelessWidget {
  const Signup_bdy({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.fromLTRB(44 * fem, 90 * fem, 44 * fem, 55 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 30 * fem, 0 * fem, 10 * fem),
              width: 80 * fem,
              height: 65 * fem,
              child: Image.asset(
                'assets/images/ui_logo1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 50 * fem),
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontFamily: 'Gotham-light',
                    //fontWeight: FontWeight.w100,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Mobile Number',
                  labelStyle: TextStyle(
                    fontFamily: 'Gotham-light',
                    //fontWeight: FontWeight.w100,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 20 * fem),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Gotham-light',
                    //fontWeight: FontWeight.w100,
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 25),
              child: Center(
                  child: ElevatedButton(
                onPressed: () {
                  Get.to(Homepge());
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(100, 40),
                    backgroundColor: Colors.deepPurple,
                    shape: const StadiumBorder()),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              )),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 4 * fem),
              child: const Text(
                'Already have an account?',
                style: TextStyle(fontFamily: 'Gotham-light'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Gotham-light',
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
