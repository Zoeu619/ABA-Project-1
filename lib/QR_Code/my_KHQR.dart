import 'dart:developer';
import 'package:aba_project/QR_Code/AppColor.dart';
import 'package:aba_project/QR_Code/appfonts.dart';
import 'package:aba_project/QR_Code/apptext.dart';
import 'package:aba_project/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

void main() {
  runApp(const MyKhqrApp());
}

class MyKhqrApp extends StatelessWidget {
  const MyKhqrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyKhqr(),
    );
  }
}

class MyKhqr extends StatefulWidget {
  const MyKhqr({super.key});

  @override
  State<MyKhqr> createState() => _MyKhqrState();
}

class _MyKhqrState extends State<MyKhqr> {
  final RxString selectedAccount = 'KHR | 087 545 525'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF053654),
        actions: [
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const MyApp()),
                (route) =>
                    false, // Removes all routes until the new one is added
              );
            },
          ),
        ],
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
                "QR",
                style: TextStyle(fontFamily: "Siemreap", color: Colors.white),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => Container(
          padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 39, 81, 196),
                Appcolors.primary,
              ],
              begin: Alignment.topRight,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                "100\$ ក្ដី 200\$ ក្ដីតាមសទ្ធាបងប្អូន😚🙏",
                style: TextStyle(
                    fontFamily: "Siemreap",
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    fontSize: 21),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Appcolors.light,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xFFFF0000),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: const AppText(
                          text: "KHQR",
                          color: Appcolors.light,
                          size: 25,
                          fontFamily: AppFonts.bold,
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      // Account Info
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppText(
                              text: "ENG MENGCHHORNG",
                              size: 18,
                            ),
                            AppText(
                              text: selectedAccount.value.contains("KHR")
                                  ? "0.00 KHR"
                                  : "0.00 USD",
                              fontFamily: AppFonts.bold,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                (constraints.maxWidth / 10).floor(),
                                (index) => Container(
                                  width: 5,
                                  height: 1,
                                  color: const Color.fromARGB(255, 0, 0,
                                      0), // Adjust color to match your theme
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 32, top: 24, left: 25, right: 30),
                          child: Container(
                            alignment: Alignment.center,
                            child: Image(
                              image: AssetImage(
                                  selectedAccount.value.contains("KHR")
                                      ? "images/khmer_QR.png"
                                      : "images/dollar_QR.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 26),
              GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(16.0),
                    ),
                  ),
                  builder: (context) => AccountSelectionModal(
                    accounts: const [
                      {"name": "KHR", "number": "087 545 525"},
                      {"name": "USD", "number": "500 225 760"},
                    ],
                    selectedAccount: selectedAccount,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Appcolors.primaryLight.withOpacity(0.1),
                  ),
                  child: Row(
                    children: [
                      Text(
                        selectedAccount.value,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Appcolors.light,
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_drop_down,
                        size: 32,
                        color: Appcolors.light,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                                child: Image.asset(
                              "images/save 1.png",
                              width: 25,
                            )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "ទាញយក",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Siemreap"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                              child: Image.asset(
                                "images/screenshot.png",
                                width: 25,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "ថតអេក្រង់",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Siemreap"),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            child: Center(
                                child: Image.asset(
                              "images/link.png",
                              width: 25,
                            )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            "ផ្ញើលីង",
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Siemreap"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlantedRedHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: SlantClipper(),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFFFF0000), // Red color
        ),
        child: const Text(
          "KHQR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class SlantClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width * 0.75, 0); // Top-right corner slant
    path.lineTo(size.width, size.height); // Bottom-right corner
    path.lineTo(0, size.height); // Bottom-left corner
    path.lineTo(0, 0); // Back to top-left corner
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class AccountSelectionModal extends StatelessWidget {
  final List<Map<String, String>> accounts;
  final RxString selectedAccount;

  const AccountSelectionModal({
    super.key,
    required this.accounts,
    required this.selectedAccount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            color: Appcolors.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
          ),
          child: const Center(
            child: Text(
              "SELECT ACCOUNT RECEIVE",
              style: TextStyle(
                color: Appcolors.light,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        ...accounts.map(
          (account) {
            final accountLabel = "${account['name']} | ${account['number']}";
            return Obx(
              () => GestureDetector(
                onTap: () {
                  selectedAccount.value = accountLabel;
                  Navigator.pop(context);
                  log("Selected account: $accountLabel");
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: Appcolors.primaryLight.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(
                      color: selectedAccount.value == accountLabel
                          ? Appcolors.primary
                          : Appcolors.primary.withOpacity(0),
                      width: 2.0,
                    ),
                  ),
                  child: Row(
                    children: [
                      Radio<String>(
                        value: accountLabel,
                        groupValue: selectedAccount.value,
                        onChanged: (value) {
                          selectedAccount.value = value!;
                          Navigator.pop(context);
                        },
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            accountLabel,
                            style: const TextStyle(
                              color: Appcolors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            "Wallet",
                            style: TextStyle(
                              color: Appcolors.solid,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
