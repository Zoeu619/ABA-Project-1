import 'package:flutter/material.dart';

class ECash extends StatefulWidget {
  const ECash({super.key});

  @override
  State<ECash> createState() => _ECashState();
}

class _ECashState extends State<ECash> {
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
                  TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
            ),
            Text(
              "' ",
              style: TextStyle(
                  fontSize: 25, color: Colors.red, fontWeight: FontWeight.w900),
            ),
            Text(
              "ផ្ទេរប្រាក់",
              style: TextStyle(fontFamily: "Siemreap", color: Colors.white),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
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
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          spreadRadius: 2,
                        ),
                      ],
                      color: const Color(0xFF10B394),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: Image.asset(
                        "images/Cash.png",
                        width: 65,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(Icons.error, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const Text(
                "ផ្ញើប្រាក់ទៅATM",
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
      bottomNavigationBar: BottomAppBar(
        height: 70,
        elevation: 0,
        color: const Color(0xFFEA4D4D), // Red color as shown in the image
        child: Container(
          alignment: Alignment.center,
          child: const Text(
            "ផ្ញើ", // Khmer text
            style: TextStyle(
              fontFamily: "Siemreap", // Khmer-friendly font
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildBody(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    color: const Color(0xFF101C28),
    padding: const EdgeInsets.all(16), // Add padding here for better spacing
    child:
        const MyDropdown(), // No need for the extra Container or height setting
  );
}

class MyDropdown extends StatefulWidget {
  const MyDropdown({super.key});

  @override
  State<MyDropdown> createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String dropdownValue = 'Savings: 168.82 USD';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownMenu<String>(
          width: double.infinity,
          leadingIcon:
              const Icon(Icons.savings_outlined, color: Colors.white54),
          textStyle: const TextStyle(color: Colors.white),
          initialSelection: dropdownValue,
          label: const Text(
            'ជ្រើសរើសគណនីរបស់អ្នក',
            style: TextStyle(color: Colors.white54, fontFamily: "Siemreap"),
          ),
          onSelected: (String? value) {
            if (value != null) {
              // Check for null value
              setState(() {
                dropdownValue = value;
              });
            }
          },
          dropdownMenuEntries: <DropdownMenuEntry<String>>[
            DropdownMenuEntry<String>(
              value: 'Savings: 168.82 USD',
              label: 'Savings: 168.82 USD',
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  const TextStyle(fontFamily: "Siemreap"),
                ),
              ),
            ),
            // Add more DropdownMenuEntry widgets here for other options
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "ជ្រើសរើសចំនួនទឹកប្រាក់ដែលត្រូវដក ",
          style: TextStyle(
              color: Colors.white54, fontFamily: "Siemreap", fontSize: 16),
        ),
        const SizedBox(height: 20),
        const CurrencySelector(), // Moved const here
        const SizedBox(
          height: 30,
        ),
        const PriceSlider(), // Moved const here
        const SizedBox(height: 20), // Moved const here
        const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.error, color: Colors.white, size: 20), // Added const
            SizedBox(width: 10), // Added const
            Expanded(
              child: Text(
                // Added const
                "ATM ផ្តល់តែប្រភេទក្រដាសប្រាក់ \$100 ប៉ុណ្ណោះ។ សូមប្តូរទៅ ជម្រើសប្រាក់រៀល ប្រសិនបើត្រូវការក្រដាស់ប្រាក់តូចជាង នេះ។",
                style: TextStyle(color: Colors.white, fontFamily: "Siemreap"),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        TextField(
          style: TextStyle(color: Colors.white, fontFamily: "Siemreap"),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.white54,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: const Icon(Icons.edit),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.white54),
            ),
            label: const Text("ចំណាំ(មិនដាក់ក៏បាន)"),
            labelStyle:
                const TextStyle(color: Colors.white, fontFamily: "Siemreap"),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "សង្ខេប",
          style: TextStyle(
              color: Colors.lightBlue,
              fontFamily: "Siemreap",
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xFF212D39),
            border: const Border(),
          ),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ចំនួនដែលត្រូវផ្ទេរ៖",
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "100.00 USD",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "សាច់ប្រាក់ទទួល៖ ",
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "100.00 USD",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ថ្លៃសេវា:",
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "0.10 USD",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Divider(
                  color: Colors.white54,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ទឹកប្រាក់សរុប:",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white54,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "100.10 USD",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: "Siemreap",
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class CurrencySelector extends StatefulWidget {
  const CurrencySelector({super.key});

  @override
  State<CurrencySelector> createState() => _CurrencySelectorState();
}

class _CurrencySelectorState extends State<CurrencySelector> {
  int selectedCurrencyIndex = 0;

  final List<String> currencyLabels = ['ដុល្លារអាមេរិក', 'ខ្មែររៀល'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF35424b),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCurrencyOption(0),
          _buildCurrencyOption(1),
        ],
      ),
    );
  }

  Widget _buildCurrencyOption(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCurrencyIndex = index;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: selectedCurrencyIndex == index
              ? Colors.lightBlue
              : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: 46, vertical: 11), // Reduced padding
        child: Row(
          children: [
            Icon(
              index == 0 ? Icons.attach_money : Icons.money_off,
              color: Colors.white,
              size: 20, // Added size
            ),
            const SizedBox(width: 8), // Added spacing
            Text(
              currencyLabels[index],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Siemreap",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PriceSlider extends StatefulWidget {
  const PriceSlider({super.key});

  @override
  State<PriceSlider> createState() => _PriceSliderState();
}

class _PriceSliderState extends State<PriceSlider> {
  double _currentValue = 100;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none, // Disable clipping
        children: [
          // Background Container with border
          Container(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            width: double.infinity,
            height: 70, // Adjusted height
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white54),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: SliderTheme(
              data: SliderThemeData(
                trackHeight: 2,
                thumbShape: const CustomThumbShape(),
                overlayShape: SliderComponentShape.noOverlay,
                trackShape: CustomTrackShape(),
                inactiveTrackColor: Colors.transparent,
                activeTrackColor: Colors.transparent,
              ),
              child: Slider(
                value: _currentValue,
                min: 100,
                max: 1000,
                divisions: 9, // 10 values: 100, 200, ..., 1000
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
            ),
          ),
          // Price label Positioned on top of the border
          Positioned(
            top: -16,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF101C28).withOpacity(1),
                    spreadRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
                color: Colors.blue,
              ),
              padding:
                  const EdgeInsets.only(left: 15, right: 15, top: 3, bottom: 3),
              child: Text(
                '\$${_currentValue.toInt()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          // Left label
          const Positioned(
            left: 16,
            top: 5,
            child: Text(
              '\$100',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          // Right label
          const Positioned(
            right: 16,
            top: 5,
            child: Text(
              '\$1,000',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    Offset? secondaryOffset,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;

    // Draw inactive track
    final inactiveTrackPaint = Paint()
      ..color = const Color(0xFF455569) // Adjusted color
      ..style = PaintingStyle.fill;
    context.canvas.drawRect(
      Rect.fromLTWH(thumbCenter.dx, trackTop,
          trackWidth - (thumbCenter.dx - trackLeft), trackHeight),
      inactiveTrackPaint,
    );

    // Draw active track
    final activeTrackPaint = Paint()
      ..color = const Color(0xFF72B6D8) // Adjusted color
      ..style = PaintingStyle.fill;

    context.canvas.drawRect(
      Rect.fromLTWH(
          trackLeft, trackTop, thumbCenter.dx - trackLeft, trackHeight),
      activeTrackPaint,
    );

    // Draw tick marks (optional) - Corrected positioning
    final tickPaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    const divisions = 9; // Set the number of divisions directly
    for (int i = 0; i <= divisions; i++) {
      final tickX = trackLeft + (trackWidth / divisions) * i;
      context.canvas.drawLine(
        Offset(tickX, trackTop - 10), // Extended tick marks
        Offset(tickX, trackTop + 10),
        tickPaint,
      );
    }
  }
}

class CustomThumbShape extends SliderComponentShape {
  const CustomThumbShape();

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(25, 25); // Larger thumb size
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required Size sizeWithOverflow,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double textScaleFactor,
    required double value,
  }) {
    final thumbPaint = Paint()
      ..color = const Color(0xFF72B6D8) // Adjusted color
      ..style = PaintingStyle.fill;

    final thumbRect = Rect.fromCenter(
      center: center,
      width: 3,
      height: 40,
    );
    context.canvas.drawRRect(
      RRect.fromRectAndRadius(thumbRect, const Radius.circular(15)),
      thumbPaint,
    );

    // final thumbRadius = getPreferredSize(true, isDiscrete).width / 2;
    // context.canvas.drawCircle(center, thumbRadius, thumbPaint);

    // // Optional: Add a border
    // final borderPaint = Paint()
    //   ..color = Colors.white
    //   ..style = PaintingStyle.stroke
    //   ..strokeWidth = 2;
    // context.canvas.drawCircle(center, thumbRadius, borderPaint);
  }
}
