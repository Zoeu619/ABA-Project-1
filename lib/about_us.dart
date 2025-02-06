import 'package:aba_project/image.dart';
import 'package:aba_project/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DevelopScreen(),
    );
  }
}

class DevelopScreen extends StatefulWidget {
  const DevelopScreen({super.key});

  @override
  State<DevelopScreen> createState() => _DevelopScreenState();
}

class _DevelopScreenState extends State<DevelopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF013147),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const MyApp()),
              (route) => false, // Removes all routes until the new one is added
            );
          },
        ),
        backgroundColor: const Color(0xFF013147),
        title: const Text(
          'About US',
          style: TextStyle(
              color: Colors.white, fontFamily: "Lobster", fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items6.length, // Number of items to display
        padding: const EdgeInsets.all(8.0),
        itemBuilder: (context, index) {
          return _buildAboutUS(index);
        },
      ),
    );
  }
}

Widget _buildAboutUS(int index) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
      color: Color(0xFF212D39),
    ),
    child: Stack(
      children: [
        Positioned(
          child: Container(
            height: 90,
            decoration: const BoxDecoration(
              color: Color(0xFF053654),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50)),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Keeps space between elements
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    image: DecorationImage(
                      image: AssetImage(items6[index]["image"]!),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                Expanded(
                  // Ensures the Column content is centered in its allocated space
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Vertically center name and id
                    crossAxisAlignment: CrossAxisAlignment
                        .center, // Horizontally center name and id
                    children: [
                      Text(
                        items6[index]["name"]!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Righteous",
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        items6[index]["id"]!,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Righteous",
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                  "Developed Screen",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: "Righteous"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                items6[index]["text1"]!,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Pochaevsk",
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                items6[index]["text2"]!,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Pochaevsk",
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                items6[index]["text3"]!,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Pochaevsk",
                    fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                items6[index]["text4"]!,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontFamily: "Pochaevsk",
                    fontSize: 22),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
