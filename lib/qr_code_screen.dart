import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class QrPage extends StatefulWidget {
  const QrPage({super.key});

  @override
  State<QrPage> createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF013147),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'ABA',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
              Text(
                '\' ',
                style: TextStyle(
                    color: Color(0xffec3531),
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                'ស្គែន',
                style: TextStyle(color: Colors.white, fontFamily: "Siemreap"),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Stack(
        // Stack should wrap the entire body content
        children: [
          Column(
            children: [
              Container(
                height: 560,
                decoration: const BoxDecoration(
                  color: Colors
                      .white, // Place color inside the decoration for consistency
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    // Removed Positioned, replaced with Center
                    child: Lottie.network(
                        "https://lottie.host/b073b852-92be-4534-8e30-d6b135f001b7/n7VWbjo3k6.json"),
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF292929)),
                      onPressed: () {
                        // Action for torch button
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.flashlight_on_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "ពិល",
                            style: TextStyle(
                                fontFamily: "Siemreap", color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  SizedBox(
                    width: 170,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color(0xFF292929), // Fixing the color here
                      ),
                      onPressed: () {
                        // Action for open QR button
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "បើក QR",
                            style: TextStyle(
                                fontFamily: "Siemreap", color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Add any additional elements that should be stacked on top, if necessary
        ],
      ),
    );
  }
}
