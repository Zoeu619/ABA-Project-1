import 'package:flutter/material.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
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
              'កាត',
              style: TextStyle(color: Colors.white, fontFamily: "Siemreap"),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 15),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xFF4D7181),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/Card.png",
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "កាតថ្មី",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Siemreap",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 50),
              _buildBody(context),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildcard() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: const Color(0xFF212D39),
    ),
    margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            // border: Border.all(color: Colors.white, width: 1),
            boxShadow: const [
              BoxShadow(
                color: Colors.white,
                offset: Offset.zero,
                // blurRadius: 0.0,
                spreadRadius: 1.5,
                blurStyle: BlurStyle.normal,
              ),
            ],
            image: const DecorationImage(
              image: AssetImage("images/Mobile Legends.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'Mobile Legends: Bang Bang',
          style: TextStyle(color: Colors.white, fontFamily: "Siemreap"),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Image.asset("images/footer_mastercard.png", width: 30, height: 30),
            const SizedBox(width: 10),
            const Text(
              'កាតឥណពន្ធ',
              style: TextStyle(color: Colors.white, fontFamily: "Siemreap"),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildBody(BuildContext context) {
  return Container(
    color: const Color(0xFF101C28),
    child: Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "កាតឥណពន្ធរចនាពិសេស",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Siemreap",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          _buildcard(),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 16,
              left: 16,
            ),
            child: Text(
              "កាតឥណពន្ធ ABA",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Siemreap",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          _buildLoanOption(
            image: "images/business.png",
            title: "កាតឥណពន្ធ ",
            description:
                "ស្នើសុំបើកកាតឥណពន្ធ ABA បានយ៉ាង ងាយស្រួល ហើយអ្នកអាចអញ្ជើញមកយកកាតនៅ សាខាដោយខ្លួនឯង ឬទទួលតាមសេវាដឹកជញ្ជូន ក៏បាន។ ",
            onTap: () {
              print("Fast Loan tapped!");
            },
          ),
          const SizedBox(height: 10),
          _buildLoanOption(
            image: "images/Card_Emulator.png",
            title: "កាតនិម្មិត ",
            description:
                "បើកកាតប្រភេទ Visa, Mastercard រឺ UnionPay បានភ្លាមៗ ដោយឥតគិតថ្លៃ ដើម្បីប្រើប្រាស់សម្រាប់ ទូទាត់តាមអនឡាញ។ ",
            onTap: () {
              print("Salary Loan tapped!");
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    ),
  );
}

Widget _buildLoanOption({
  required String image,
  required String title,
  required String description,
  required VoidCallback onTap,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 16, right: 16),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFF212D39),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                image,
                width: 40,
                height: 40,
                errorBuilder: (context, object, stackTrace) =>
                    const Icon(Icons.error, color: Colors.white),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontFamily: "Siemreap",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontFamily: "Siemreap",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: onTap,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("ស្នើសុំកាតថ្មី",
                    style: TextStyle(
                      color: Color.fromARGB(255, 119, 200, 240),
                      fontFamily: "Siemreap",
                      fontSize: 16,
                    )),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color.fromARGB(255, 119, 200, 240),
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
