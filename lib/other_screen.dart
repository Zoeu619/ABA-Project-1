import 'package:aba_project/image.dart';
import 'package:flutter/material.dart';

class OtherScreen extends StatefulWidget {
  const OtherScreen({super.key});

  @override
  State<OtherScreen> createState() => _OtherScreenState();
}

class _OtherScreenState extends State<OtherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF013147),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_outlined, color: Colors.white),
        ),
        backgroundColor: const Color(0xFF013147),
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
              "សេវាកម្ម",
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
                    padding: EdgeInsets.only(left: 16.0, right: 130, top: 30),
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
                      "images/Grid2.png",
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
    height: MediaQuery.of(context).size.height,
    color: const Color(0xFF101C28),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Polularity(otherImages: otherImageList),
        More(moreImage: moreImageList),
        const Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            child: Text(
              "សំខាន់ៗ",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Siemreap",
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
        Important(moreImage: moreImageList),
      ],
    ),
  );
}

class Polularity extends StatelessWidget {
  const Polularity({super.key, required this.otherImages});
  final List<OtherImage> otherImages;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 32, bottom: 16),
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
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items3.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset.zero,
                          // blurRadius: 0.0,
                          spreadRadius: 2.0,
                          blurStyle: BlurStyle.normal,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(items3[index]["image"]!),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      // border: Border.all(
                      //   color: Colors.white,
                      //   width: 2,
                      // ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    items3[index]["text"]!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Siemreap",
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class More extends StatelessWidget {
  const More({super.key, required this.moreImage});
  final List<MoreImage> moreImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "សេវាកម្មបន្ថែមថ្មី",
            style: TextStyle(
              fontFamily: "Siemreap",
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(
          height: 130,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: moreImage.length,
            itemBuilder: (context, index) {
              final item = moreImage[index];
              return Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 300,
                        height: 100,
                        margin: const EdgeInsets.symmetric(horizontal: 8.0),
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
                                    image: AssetImage(item.image),
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
                                      item.text,
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
                                      item.title,
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
                      Positioned(
                        top: 0,
                        right: 8,
                        child: Container(
                          width: 60,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            "NEW",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class Important extends StatelessWidget {
  const Important({super.key, required this.moreImage});
  final List<MoreImage> moreImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/movie2per.png"),
                fit: BoxFit.cover,
              ),
              color: Color(0xFF212D39),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color(0xFF212D39),
                    width: 2,
                  ),
                ),
                color: Color(0xFF212D39),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset.zero,
                            // blurRadius: 0.0,
                            spreadRadius: 2.0,
                            blurStyle: BlurStyle.normal,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage("images/movie.png"),
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
                          const Text(
                            "សំបុត្រកុន",
                            style: TextStyle(
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
                            "ទិញសំបុត្រកុន មើលរឿងថ្មីៗ តាមបណ្តារោងភាពយន្ត នានា ជាមួយការទូទាត់យ៉ាងស្រួល",
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
          ),
          Positioned(
            top: 10,
            left: 5,
            child: Container(
              width: 160,
              height: 30,
              decoration: const BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.only(
                //   topRight: Radius.circular(20),
                //   bottomLeft: Radius.circular(10),
                // ),
              ),
              alignment: Alignment.center,
              child: const Text(
                "15% of Prime Cineplex",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
