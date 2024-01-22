import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:notes_app/userProfile.dart';

class Menubar extends StatefulWidget {
  const Menubar({super.key});


  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,right:20, top:30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right:10.0),
                  child: CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/images/profile_default.png'),),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("Email: "),
                  ],
                )
              ],
            ),
            const SizedBox(height: 25,),
            const Divider(
              color: Colors.black,
            ),

            const SizedBox(height: 5,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xfff5fefe),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left:15.0),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.home),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Home",),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5,),
            GestureDetector(
              onTap: (){
                //Get.to(const UserProfile());
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  //color: Color(0xfff5fefe),
                    borderRadius: BorderRadius.circular(20)
                ),

                child: Padding(
                  padding: const EdgeInsets.only(left:15.0),
                  child: Row(
                    children: [
                      SizedBox(width: 23,height:23,child: Image.asset('assets/Icons/notification.png'),),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text("Notifications",),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5,),
            // Container(height: 50,
            //   decoration: BoxDecoration(
            //     // color: Color(0xfff5fefe),
            //       borderRadius: BorderRadius.circular(20)
            //   ),
            //   child:  Padding(
            //     padding: EdgeInsets.only(left:15.0),
            //     child: Row(
            //       children: [
            //         SizedBox(width: 23,height:23,child: Image.asset('assets/Icons/download.png'),),
            //         SizedBox(
            //           width: 20,
            //         ),
            //         Text("Downloads",),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(height: 5,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                // color: Color(0xfff5fefe),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Row(
                  children: [
                    SizedBox(width: 25,height:25,child: Image.asset('assets/Icons/support.png'),),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Help",),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5,),
            const Divider(
              color: Colors.black,
            ),
            const SizedBox(height: 5,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                //  color: Color(0xfff5fefe),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Row(
                  children: [
                    SizedBox(width: 25,height:25,child: Image.asset('assets/Icons/exit.png'),),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Logout",),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
