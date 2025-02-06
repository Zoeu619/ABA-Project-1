import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fav_payment extends StatefulWidget {
  const fav_payment({super.key});

  @override
  State<fav_payment> createState() => _fav_paymentState();
}

class _fav_paymentState extends State<fav_payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF013147),
        appBar: AppBar(
          actions: const [
            Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 20,
            )
          ],
          leading: IconButton(
            icon:
                const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: const Color(0xFF013147),
          title: const Row(
            children: [
              Text(
                "ABA",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              Text(
                "' ",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              Text(
                "គំរូទូទាត់ប្រចាំ",
                style: TextStyle(fontFamily: "Siemreap", color: Colors.white),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 130, top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            "គំរូទូទាត់ប្រចាំ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Siemreap"),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "ផ្ទេរប្រាក់ទៅមិត្តភក្តិ ឬបង់វិក្កយបត្របានលឿន ស្រួល ដោយប្រើគំរូបស្រាប់។",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "Siemreap"),
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Image.asset(
                        "images/save.png",
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color(0xFF101C28),
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,
                      height: 110,
                      decoration: BoxDecoration(
                          color: const Color(0xFF212D39),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          Positioned(
                              bottom: 22,
                              right: 10,
                              child: Image.asset(
                                "images/pin.png",
                                width: 22,
                                height: 22,
                              )),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  image: const DecorationImage(
                                      image: AssetImage("images/metfone.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SIM Metfone",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("097 906 562 4",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF858F98)))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Container(
                      width: double.infinity,
                      height: 110,
                      decoration: BoxDecoration(
                          color: const Color(0xFF212D39),
                          borderRadius: BorderRadius.circular(20)),
                      child: Stack(
                        children: [
                          const Positioned(
                            top: 10,
                            right: 10,
                            child: Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 35,
                            ),
                          ),
                          Positioned(
                              bottom: 22,
                              right: 10,
                              child: Image.asset(
                                "images/pin.png",
                                width: 22,
                                height: 22,
                              )),
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                margin: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  image: const DecorationImage(
                                      image: AssetImage("images/smart.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "SIM Smart",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text("087 545 525",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF858F98)))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFEF5452),
            ),
            constraints: const BoxConstraints.expand(),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ));
  }
}
