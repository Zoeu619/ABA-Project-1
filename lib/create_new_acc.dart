import 'package:flutter/material.dart';

class CreateNewAcc extends StatelessWidget {
  const CreateNewAcc({super.key});

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
        backgroundColor: Colors.transparent,
        title: const Row(
          children: [
            Text(
              "ABA",
              style:
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
            Text("' ",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.w900)),
            Text(
              "បើកគណនី",
              style: TextStyle(fontFamily: "Siemreap", color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          // Header Section
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
                        "images/Document.png",
                        width: 45,
                        height: 45,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "បើកគណនីថ្មី",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Siemreap",
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 25),
            ],
          ),
          _buildBody(context),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      color: const Color(0xFF101C28),
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          // Loan Options
          _buildLoanOption(
            image: "images/setMoney.png",
            title: "គណនីបញ្ញើមានកាលកំណត់ ",
            description:
                "បើកគណនីកាលកំណត់ នៅ ABA នោះអ្នក នឹង ឃើញទឹកប្រាក់របស់អ្នកកើនឡើងជាប្រចាំ។ អ្នក អាចបើក គណនីកាលកំណត់ ជាប្រាក់រៀល ឬ ដុល្លារ និងអាចជ្រើសយកជម្រើស ទូទាត់ការប្រាក់ រៀងរាល់ខែក៏បាន និងនៅចុងគ្រាក៏បាន ",
            onTap: () {
              print("Fast Loan tapped!");
            },
          ),
          const SizedBox(height: 10),
          _buildLoanOption(
            image: "images/Junior.png",
            title: "គណនី Junior ",
            description:
                "គណនី Junior គឺជាគណនីសន្សំរួមគ្នាជាមូលដ្ឋាន ដែលត្រូវបានរចនាឡើងសម្រាប់កុមារដើម្បីជួយ ពួកគេឱ្យយល់ពីតម្លៃនៃប្រាក់ និងរៀនពីរបៀប សន្សំ។ ជាមួយនឹងមុខងារនេះ ឪពុកម្តាយតែងតែ អាចទទួលបានព័ត៌មានអំពីសកម្មភាពហិរញ្ញវត្ថុ របស់ពួកគេ។ ",
            onTap: () {
              print("Salary Loan tapped!");
            },
          ),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF212D39),
          ),
          padding: const EdgeInsets.all(20),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "ស្នើកម្ចីថ្មី",
                    style: TextStyle(
                      color: Color(0xFF4286AB),
                      fontFamily: "Siemreap",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFF4286AB),
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
