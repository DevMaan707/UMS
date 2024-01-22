import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:classroom_app/controllers/db_crud.dart';
import 'package:classroom_app/controllers/reserveDetails.dart';

class Blocks extends StatefulWidget {
  final String blockname;
  const Blocks({Key? key, required this.blockname}) : super(key: key);

  @override
  State<Blocks> createState() => _BlocksState(blockname: blockname);
}

class _BlocksState extends State<Blocks> {
  final String blockname;
  _BlocksState({required this.blockname});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Homepage(blockname: blockname),
    );
  }
}

class Homepage extends StatefulWidget {
  final String blockname;
  const Homepage({Key? key, required this.blockname}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String get blockname => widget.blockname;
  Map<String, String> day = {
    "Monday": "1",
    "Tuesday": "2",
    "Wednesday": "3",
    "Thursday": "4",
    "Friday": "5",
    "Saturday": "6",
  };

  DB_crud sendData = DB_crud();
  Reserve resData = Reserve();

  String dropdownValue = 'Class Room';
  String dropdownValue1 = "Monday";
  String dropdownValue2 = '1';
  String dropdownValue3 = '1';

  List<String> serverData = [];

  Color getContainerColor() {
    if (blockname == 'A') {
      return const Color(0xff3e5bb2);
    } else if (blockname == 'B') {
      return const Color(0xffbb034b);
    } else if (blockname == 'C') {
      return const Color(0xfff25044);
    } else if (blockname == 'D') {
      return const Color(0xfff57a30);
    } else if (blockname == 'E') {
      return const Color(0xff2fbad1);
    } else if (blockname == 'H') {
      return const Color(0xffe93c4a);
    } else {
      return const Color(0xff6c117b);
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              color: getContainerColor(),
              borderRadius: const BorderRadius.only(
                bottomLeft:
                    Radius.circular(20.0), // Adjust the radius as needed
                bottomRight:
                    Radius.circular(20.0), // Adjust the radius as needed
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back_rounded),
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 25.0,
                      top: 20,
                    ),
                    child: Text(
                      blockname,
                      style: const TextStyle(
                        fontFamily: 'Gotham-light',
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      (blockname == "All") ? "Blocks" : "Block",
                      style: const TextStyle(
                        fontFamily: 'Gotham',
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(20, 40, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 201 * fem,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      //border: Border.all(color: Color(0xff000000)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(0.5, 0.5),
                          blurRadius: 15,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(-0.5, -0.5),
                          blurRadius: 15,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 30,
                            ),
                            child: Text("Select the type of room"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 30,
                            ),
                            width: 140,
                            height: 40,
                            decoration: BoxDecoration(
                                color: const Color(0xffEBEDFE),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                items: <String>[
                                  'Class Room',
                                  'Seminar Hall',
                                  'Auditorium',
                                  'Computer Lab',
                                  'BEE Lab',
                                  'Chemistry Lab',
                                  'Physics Lab'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem(
                                      value: value, child: Text(value));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 10,
                            ),
                            child: Text("When do you want it"),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 25.0),
                            child: Container(
                              width: 130,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: const Color(0xffEBEDFE),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: DropdownButton<String>(
                                  value: dropdownValue1,
                                  items: <String>[
                                    "Monday",
                                    "Tuesday",
                                    "Wednesday",
                                    "Thursday",
                                    "Friday",
                                    "Saturday",
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem(
                                        value: value, child: Text(value));
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue1 = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                              top: 10,
                            ),
                            child: Text("For which hour"),
                          ),
                          const Spacer(),
                          Container(
                            width: 100,
                            height: 30,
                            decoration: BoxDecoration(
                                color: const Color(0xffEBEDFE),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: DropdownButton<String>(
                                value: dropdownValue2,
                                items: <String>[
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem(
                                      value: value, child: Text(value));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue2 = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, right: 20.0),
                            child: GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    backgroundColor: Colors.white,
                                    context: context,
                                    builder: (_) {
                                      return Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Container(
                                          height: 100,
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  const Text("How many hours?"),
                                                  const Spacer(),
                                                  Container(
                                                    width: 100,
                                                    height: 30,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffEBEDFE),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
                                                    child: Center(
                                                      child: DropdownButton<
                                                          String>(
                                                        value: dropdownValue3,
                                                        items: <String>[
                                                          '1',
                                                          '2',
                                                          '3',
                                                        ].map<
                                                            DropdownMenuItem<
                                                                String>>((String
                                                            value) {
                                                          return DropdownMenuItem(
                                                              value: value,
                                                              child:
                                                                  Text(value));
                                                        }).toList(),
                                                        onChanged:
                                                            (String? newValue) {
                                                          setState(() {
                                                            dropdownValue3 = newValue!;
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                ],
                                              ),
                                              const Spacer(),
                                              OutlinedButton(
                                                  onPressed: () {},
                                                  style: OutlinedButton.styleFrom(
                                                    backgroundColor: getContainerColor(),

                                                  ),
                                                  child: const Text("Ok",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white
                                                  ),)),
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              },
                              child: SizedBox(
                                  width: 25,
                                  height: 25,
                                  child:
                                      Image.asset('assets/images/filter.png')),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: const Size(100, 50),
                          backgroundColor: getContainerColor(),
                          padding: const EdgeInsets.all(10),
                          //shadowColor: Colors.deepPurpleAccent,
                        ),
                        onPressed: () async {
                          String dayKey = day[dropdownValue1].toString();
                          var data = await sendData.availableClassrooms(
                              blockname, dropdownValue, dayKey, dropdownValue2,dropdownValue3);
                          setState(() {
                            serverData = [];
                            for (int i = 0; i <data['number']; i++) {
                              serverData.add(data['classroom'][i]);
                            }
                          });
                        },
                        child: const Text(
                          'Search',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
                Container(
                  child: Column(
                    children: serverData.map((cls) {
                      return Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 20,
                        ),
                        width: MediaQuery.of(context).size.width - 40,
                        height: 120 * fem,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20 * fem),
                            //border: Border.all(color: const Color(0xff000000)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(0.5, 0.5),
                                blurRadius: 15,
                                spreadRadius: 1,
                              ),
                              BoxShadow(
                                color: Colors.grey.shade300,
                                offset: const Offset(-0.5, -0.5),
                                blurRadius: 15,
                                spreadRadius: 1,
                              )
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              cls,
                              style: const TextStyle(
                                fontFamily: 'Gotham-light',
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  const Text(
                                    "<classroomtype>",
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 105,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8 * fem),
                                        //  border: Border.all(
                                        //      color: const Color(0xff000000)
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          await resData.sendData(
                                              cls, dropdownValue2);
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                getContainerColor(),
                                            fixedSize: const Size(100, 20)),
                                        child: const Center(
                                            child: Text(
                                          'Reserve',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )),
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
