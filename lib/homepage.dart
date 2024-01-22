import 'package:flutter/material.dart';
import 'blocks.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'menu.dart';

class Homepge extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final String token ;// Declare a final variable

  // Constructor to receive the variable
  Homepge({required this.token});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(child:Menubar()),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Container(
            height: 80,
            width: 80,
            padding: const EdgeInsets.only(top: 10.0),
            margin: const EdgeInsets.only( right: 5.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/ui_logo1.png'),
              ),
            ),
          ),
        ),

        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/customer-service.png'),
          ),
        ],
      ),
      body: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15.0,right:15.0,bottom: 8),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 25,
          ),
           Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10),
            child:  Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:20.0,left:40,bottom: 20,right: 20),
                child: Row(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome',

                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                        Text('<USER>',

                          style: TextStyle(
                            fontFamily: 'Gotham',
                            fontSize: 15,
                            color: Colors.white,
                          ),),
                      ],
                    ),
                    const SizedBox(
                      width:40
                    ),
                    Lottie.asset('assets/welcome1.json',
                        width: 100,
                        height: 100)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10,top:20),
            child:  GestureDetector(
              onTap: (){
                Get.to(const Blocks(blockname: "All"));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xff6c117b),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0,left:40,bottom: 20,right: 20),
                  child: Row(
                    children: [
                      const Text('All Blocks',
                        style: TextStyle(
                          fontFamily: 'Gotham',
                          fontSize: 20,
                          color: Colors.white,
                        ),),
                      const SizedBox(
                          width:40
                      ),
                      SizedBox(
                        width:100,
                        height:100,
                        child:Image.asset("assets/images/all.png"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              //print("Clicked");
              Get.to(const Blocks(blockname:'A'));
            },
            child: Stack(
              children:[ Image.asset(
                'assets/images/a.png',
              ),
                const Positioned(
                  left: 35,
                  bottom: 45,
                    child: Text("Total : 50",
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      color: Colors.white,
                    ),)),
                const Positioned(
                    left: 35,
                    bottom: 25,
                    child: Text("Available : 25",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),))
            ]),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.to( const Blocks(blockname:'B'));
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/b.png',
                ),
                const Positioned(
                    left: 35,
                    bottom: 45,
                    child: Text("Total : 50",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),)),
                const Positioned(
                    left: 35,
                    bottom: 25,
                    child: Text("Available : 25",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.to( const Blocks(blockname:'C'));
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/c.png',
                ),
                const Positioned(
                    left: 35,
                    bottom: 45,
                    child: Text("Total : 50",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),)),
                const Positioned(
                    left: 35,
                    bottom: 25,
                    child: Text("Available : 25",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.to(const Blocks(blockname:'D'));
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/d.png',
                ),
                const Positioned(
                    left: 35,
                    bottom: 45,
                    child: Text("Total : 50",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),)),
                const Positioned(
                    left: 35,
                    bottom: 25,
                    child: Text("Available : 25",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.to(const  Blocks(blockname:'E'));
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/e.png',
                ),
                const Positioned(
                    left: 35,
                    bottom: 45,
                    child: Text("Total : 50",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),)),
                const Positioned(
                    left: 35,
                    bottom: 25,
                    child: Text("Available : 25",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Get.to( const Blocks(blockname:'H'));
            },
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/h.png',
                ),
                const Positioned(
                    left: 35,
                    bottom: 45,
                    child: Text("Total : 50",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),)),
                const Positioned(
                    left: 35,
                    bottom: 25,
                    child: Text("Available : 25",
                      style: TextStyle(
                        fontFamily: 'Gotham',
                        color: Colors.white,
                      ),))
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}