import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'main.dart';



class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    navhome();
  }
  navhome()async{
    await Future.delayed(const Duration(milliseconds: 3500),(){});
    Get.offAllNamed('/login');

  }
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200 * fem,
            height: 125 * fem,
            child: Image.asset(
              'assets/images/ui_logo1.png',
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Text('AU CLASSROOM',
            style: TextStyle(
              fontFamily: 'BebasNeue',
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),),

          ),
          Lottie.asset('assets/load_lottie.json',
          width: 100,
          height: 60)
        ],
      ),
    );
  }
}
