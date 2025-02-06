import 'package:flutter/material.dart';

class ScreenAcc extends StatelessWidget {
  const ScreenAcc({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: acc_page(),
    );
  }
}

class acc_page extends StatefulWidget {
  const acc_page({super.key});

  @override
  State<acc_page> createState() => _acc_pageState();
}

class _acc_pageState extends State<acc_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff255b81),
      appBar: AppBar(
        leading: IconButton(
          // Add a leading IconButton
          icon: const Icon(Icons.arrow_back_ios_outlined,
              color: Colors.white), // White back arrow
          onPressed: () {
            Navigator.pop(context); // Navigate back when pressed
          },
        ),
        backgroundColor: const Color(0xff255b81),
        title: const Row(
          children: [
            Text(
              "ABA",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
            ),
            Text(
              "' ",
              style: TextStyle(
                  color: Color(0xffec3531),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900),
            ),
            Text(
              "គណនី",
              style: TextStyle(fontFamily: "Siemreap", color: Colors.white),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, top: 16, bottom: 32),
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff255b81),
                            border: Border.all(
                              color: const Color(0xFF00959F),
                              width: 25,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "សង្ខេប",
                              style: TextStyle(
                                fontFamily: "Siemreap",
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "សរុបជា USD",
                                  style: TextStyle(
                                    fontFamily: "Siemreap",
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Divider(
                                color: Colors.white54,
                                thickness: 1,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "\$168.82",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Account Details Section
              Stack(
                children: [
                  Container(
                    color: const Color(0xFF192730),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: const Color(0xFF36434D),
                        borderRadius: BorderRadius.circular(10),
                        border: const Border(
                            left: BorderSide(
                                width: 10, color: Color(0xFF00959F))),
                      ),
                      child: const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Savings",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "500 225 760 | Savings",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(""),
                              Text(
                                "168.82 USD",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 30,
                    right: 30,
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
