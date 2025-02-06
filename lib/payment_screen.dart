import 'package:aba_project/image.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF053654),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFF053654),
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
              "ទូទាត់ប្រាក់",
              style: TextStyle(fontFamily: "Siemreap", color: Colors.white),
            ),
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
                    padding: EdgeInsets.only(left: 16.0, right: 150, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "សេវាកម្ម",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Siemreap"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "ចូលប្រើសេវាកម្មដែលអ្នកចូលចិត្តភ្លាមៗដែលផ្ដល់ដោយដៃគូរបស់ធនាគារ ABA",
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
                    bottom: -50,
                    right: -55,
                    child: Image.asset(
                      "images/Payment2.png",
                      width: 200,
                      height: 200,
                    ),
                  ),
                ],
              ),
              _buildBody(context)
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Container(
    color: const Color(0xFF101C28),
    // height: MediaQuery.of(context).size.height,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "សេវាកម្មពេញនិយម",
            style: TextStyle(
              fontFamily: "Siemreap",
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Popularity(),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: items5.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 300,
                        height: 80,
                        margin: const EdgeInsets.only(left: 16.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF212D39),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(items5[index]["image"]!),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      items5[index]["text"]!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontFamily: "Siemreap",
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Text(
            "សេវាកម្មទាំងអស់ ",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Siemreap",
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        const AllService(),
      ],
    ),
  );
}

class Popularity extends StatelessWidget {
  const Popularity({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 300,
                    height: 80,
                    margin: const EdgeInsets.only(left: 16.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFF212D39),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(item["image"]!),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  item["text"]!,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontFamily: "Siemreap",
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

class AllService extends StatelessWidget {
  const AllService({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: items1.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 10),
              decoration: BoxDecoration(
                color: const Color(0xFF212D39),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.white),
                        image: DecorationImage(
                          image: AssetImage(items1[index]["image"]!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            items1[index]["title"]!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontFamily: "Siemreap",
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            items1[index]["text"]!,
                            style: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 14,
                              fontFamily: "Siemreap",
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
