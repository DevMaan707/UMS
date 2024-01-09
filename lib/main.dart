import 'package:flutter/material.dart';
//import 'utils.dart';
import 'package:get/get.dart';
import 'signup.dart';
import 'homepage.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Login_body(),
    );
  }
}

class Login_body extends StatelessWidget {
  const Login_body({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // androidlarge1tXF (1:2)
        padding: EdgeInsets.fromLTRB(20 * fem, 108 * fem, 20 * fem, 67 * fem),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signal202311031339340021FuX (1:3)
              width: 100 * fem,
              height: 65 * fem,
              child: Image.asset(
                'assets/images/ui_logo1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              // auNDT (1:8)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 2 * fem, 0 * fem),
              child: const Text(
                'AU',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              // classrooms34h (1:4)
              margin: EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 70 * fem),
              child: const Text(
                'CLassrooms',
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
              padding: const EdgeInsets.only(top: 25.0, bottom: 15),
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
                  'Login',
                  style: TextStyle(fontFamily: 'Gotham',
                    color: Colors.white,
                  ),
                ),
              )),
            ),
            Container(

              margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 3 * fem, 12 * fem),
              child: const Text(
                'Dont have an account already?',
                style: TextStyle(fontFamily: 'Gotham-light'),
              ),
            ),
            Container(

              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 0 * fem),
              child: GestureDetector(
                onTap: () {
                  Get.to(const Signup());
                },
                child: const Text(
                  'Sign Up',
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
