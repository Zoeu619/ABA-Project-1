import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF053654),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            // margin: EdgeInsets.zero,
            child: Row(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/soeu.JPG'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Welcome',
                        style: TextStyle(color: Colors.cyan),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 1.0),
                        child: Text(
                          'Vorn Soeu'.toUpperCase(),
                          style: const TextStyle(
                              color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                      const Text(
                        'Your ID: 123456',
                        style: TextStyle(color: Colors.white70, fontSize: 12.0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Accounts'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Transfers'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Payments'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Deposit'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Cash to ATM'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('ABA PAY Places'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Exchange Rates'),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset(
              'images/Grid.png',
              width: 26.0,
            ),
            title: const Text('Contact Us'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          const Divider(
            height: 1.0,
            color: Colors.white24,
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 20.0, bottom: 50.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('V 4.6.4', style: TextStyle(fontSize: 12.0)),
                Text('Last Login: 18:44 | 04 Mar 19',
                    style: TextStyle(fontSize: 12.0, color: Colors.white54))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
