import 'package:aba_project/card_screen.dart';
import 'package:aba_project/create_new_acc.dart';
import 'package:aba_project/e-cash.dart';
import 'package:aba_project/loan_screen.dart';
import 'package:aba_project/other_screen.dart';
import 'package:aba_project/payment_screen.dart';
import 'package:aba_project/qr_code_screen.dart';
import 'package:aba_project/transfer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'acc_screen.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const acc_page();
                }),
              );
            },
            child: const MenuCard(image: 'images/Account.png', text: 'គណនី'),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const CardScreen();
                }),
              );
            },
            child: const MenuCard(image: 'images/Card.png', text: 'កាត'),
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const PaymentScreen();
                  }),
                );
              },
              child: const MenuCard(
                  image: 'images/Payment.png', text: 'ទូទាត់ប្រាក់')),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const CreateNewAcc();
                  }),
                );
              },
              child: const MenuCard(
                  image: 'images/Document.png', text: 'បើកគណនីថ្មី')),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const ECash();
                  }),
                );
              },
              child: const MenuCard(
                  image: 'images/Cash.png', text: 'សេវា E-Cash')),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const Transfer();
                  }),
                );
              },
              child: const MenuCard(
                  image: 'images/Transfer.png', text: 'ផ្ទេរប្រាក់')),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const QrPage();
                  }),
                );
              },
              child: const MenuCard(
                  image: 'images/QR_Code.png', text: 'ABA ស្គែន')),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return const LoanScreen();
                }),
              );
            },
            child:
                const MenuCard(image: 'images/Loan.png', text: 'ប្រាក់កម្ចី'),
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return const OtherScreen();
                  }),
                );
              },
              child: const MenuCard(image: 'images/Grid.png', text: 'សេវាកម្ម'))
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String image;
  final String text;

  const MenuCard({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1d4367),
      margin: const EdgeInsets.all(0.1),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 40.0,
              width: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontFamily: "Siemreap"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
