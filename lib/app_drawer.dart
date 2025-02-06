import 'package:aba_project/about_us.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF053654),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xFF053654),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55.0,
                  height: 55.0,
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
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'សួស្ដី N Sovannareach!',
                          style: TextStyle(
                            fontFamily: "Siemreap",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 3.0, bottom: 1.0),
                          child: Text(
                            'មើលប្រូហ្វាល>',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13.0,
                              fontFamily: "Siemreap",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const AboutUs();
                }),
              );
            },
            child: const ListTileWidget(
              image: "images/aboutUS.png",
              text: "អំពីពួកយើង",
            ),
          ),
          const ListTileWidget(
            image: "image_drawer/setting.png",
            text: "ការកំណត់ផ្សេងៗ",
          ),
          const ListTileWidget(
            image: "image_drawer/angpao.png",
            text: "អាំងប៉ាវ",
          ),
          const ListTileWidget(
            image: "image_drawer/institution.png",
            text: "សេវាស្ថាប័នរដ្ឋាភិបាល",
          ),
          const ListTileWidget(
            image: "image_drawer/money.png",
            text: "ABA ចាយបានលុយ",
          ),
          const ListTileWidget(
            image: "image_drawer/date_time.png",
            text: "កាល់វិភាគ",
          ),
          const ListTileWidget(
            image: "image_drawer/book.png",
            text: "សៀវភៅមូលប្បទានប័ត្រ",
          ),
          const ListTileWidget(
            image: "image_drawer/rate.png",
            text: "អត្រាប្ដូរប្រាក់",
          ),
          const ListTileWidget(
            image: "image_drawer/map.png",
            text: "ទីតាំង ABA",
          ),
          const ListTileWidget(
            image: "images/add_friend.png",
            text: "ណែនាំដល់មិត្តភក្ដិ",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "កែអេក្រង់ដើម",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Siemreap",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const Divider(
            height: 1.0,
            color: Colors.white24,
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 30.0, left: 15.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'កម្មវិធី កំណែ: V 5.0.56',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Siemreap"),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Login ចុងក្រោយ: 6:29 | 82 កុម្ភះ 70',
                  style: TextStyle(
                      fontFamily: "Siemreap",
                      fontSize: 12.0,
                      color: Colors.white54),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/Cambodia.png",
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "មោទនភាពស្នាដៃខ្មែរ បង្កើតនៅផ្ទះខ្ញុំ",
                      style: TextStyle(
                          color: Color(0xFF507CA5),
                          fontFamily: "Siemreap",
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final String image;
  final String text;

  const ListTileWidget({required this.image, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        width: 23,
        height: 23,
      ),
      title: Text(
        text,
        style: const TextStyle(
            fontFamily: "Siemreap",
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
