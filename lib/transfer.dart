import 'package:aba_project/image.dart';
import 'package:flutter/material.dart';

class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
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
              "ផ្ទេរប្រាក់",
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
                    padding: EdgeInsets.only(left: 16.0, right: 130.0, top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          "ផ្ទេរប្រាក់",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Siemreap"),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "ផ្ទេរប្រាក់ទៅមិត្តភក្តិ សាច់ញាតិ ឬដៃគូរបស់អ្នក ជាមួយជំហានងាយៗ។ ",
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
                      "images/Transfer2.png",
                      width: 190,
                      height: 190,
                    ),
                  ),
                ],
              ),
              _buildBody(context),
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
    padding: const EdgeInsets.only(top: 10),
    color: const Color(0xFF101C28),
    child: const AllService(),
  );
}

class AllService extends StatelessWidget {
  const AllService({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: items2.length,
      itemBuilder: (context, index) {
        return Container(
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
                      image: AssetImage(items2[index]["image"]!),
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
                        items2[index]["title"]!,
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
                        items2[index]["text"]!,
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
        );
      },
    );
  }
}
