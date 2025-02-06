import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavTransfer extends StatefulWidget {
  const FavTransfer({super.key});

  @override
  State<FavTransfer> createState() => _FavTransferState();
}

class _FavTransferState extends State<FavTransfer> {
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
          icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
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
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
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
                const SizedBox(
                  height: 100,
                ),
                Image.asset(
                  "images/save.png",
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "គ្មានគំរូផ្ទេរប្រាក់ប្រចាំ ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "Siemreap"),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "ចុចលើប៊ូតុង + ដើម្បីបង្កើតគំរូទូទាត់ប្រចាំ ",
                  style: TextStyle(
                      color: Color(0xFF858F98),
                      fontSize: 20,
                      fontFamily: "Siemreap"),
                )
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
            color: Color(0xFF00BCD5),
          ),
          constraints: const BoxConstraints.expand(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
