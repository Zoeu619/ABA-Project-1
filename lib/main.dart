import 'package:aba_project/QR_Code/my_KHQR.dart';
import 'package:aba_project/fav_payment.dart';
import 'package:aba_project/fav_transfer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_drawer.dart';
import 'grid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ABA Mobile',
      // theme: ThemeData(
      //   canvasColor: const Color(0xff002739),
      //   brightness: Brightness.dark,
      // ),
      home: MyHomePage(key: UniqueKey(), title: 'ABA\' Mobile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff255b81),
      drawer: const Drawer(
        // child: DrawerWidget(),
        child: AppDrawer(),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Row(
          children: <Widget>[
            Text(
              'ABA',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Text(
              '\' ',
              style: TextStyle(
                  color: Color(0xFFFF0000),
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900),
            ),
            // Text(
            //   'Mobile',
            //   style: TextStyle(color: Colors.white),
            // ),
          ],
        ),
        backgroundColor: const Color(0xff255b81),
        actions: <Widget>[
          SvgPicture.asset("images/message.svg", width: 25),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              size: 25,
            ),
            tooltip: 'Air it',
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const MyKhqrApp();
                  }),
                );
              },
              child: Container(
                width: 25.0,
                height: 25.0,
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset.zero,
                      // blurRadius: 0.0,
                      spreadRadius: 2.0,
                      blurStyle: BlurStyle.normal,
                    ),
                  ],
                  color: Color(0xff7c94b6),
                  image: DecorationImage(
                    image: AssetImage('images/khQr.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  // border: Border.all(
                  //   color: Colors.white,
                  //   width: 2.0,
                  // ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        // physics: const BouncingScrollPhysics(),
        children: <Widget>[
          // Non-scrollable section
          Container(
            width: double.infinity,
            color: Colors.white,
            child: const MenuGrid(),
          ),
          // Scrollable sections
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const FavTransfer();
                }),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(left: 40),
              width: double.infinity,
              color: const Color(0xff54b8d0),
              height: 200,
              child: const Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'គំរូផ្ទេរប្រាក់ប្រចាំ',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'ចូលប្រើគំរូរបស់អ្នកត្រង់នេះ ដើម្បីផ្ទេរប្រាក់បានលឿន',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Siemreap",
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -50,
                    top: 50,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image(
                        color: Colors.white30,
                        image: AssetImage('images/Transfer.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const fav_payment();
                }),
              );
            },
            child: Container(
              padding: const EdgeInsets.only(left: 40),
              width: double.infinity,
              height: 200,
              color: const Color(0xffdd5e57),
              child: const Stack(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'គំរូទូទាត់ប្រចាំ',
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'បង្កើតគំរូដើម្បីងាយស្រួលនិងរហ័សក្នុងការទូទាត់ប្រាក់',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Siemreap",
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    right: -50,
                    top: 50,
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image(
                        color: Colors.white30,
                        image: AssetImage('images/Payment.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.production_quantity_limits),
      //       label: 'Product',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: 'About US',
      //     ),
      //   ],
      //   selectedItemColor: Colors.blueAccent,
      //   unselectedItemColor: Colors.grey,
      //   onTap: (index) {
      //     // Handle navigation or functionality here
      //   },
      // ),
    );
  }
}
