import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';

void main() {
  runApp(const MySliderApp());
}

class MySliderApp extends StatelessWidget {
  const MySliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultWheelSliderPage(),
    );
  }
}

class DefaultWheelSliderPage extends StatefulWidget {
  const DefaultWheelSliderPage({Key? key}) : super(key: key);

  @override
  _DefaultWheelSliderPageState createState() => _DefaultWheelSliderPageState();
}

class _DefaultWheelSliderPageState extends State<DefaultWheelSliderPage> {
  final int _totalCount = 10; // 10 steps (each step = 100, max = 1000)
  final int _initValue = 5; // Start from 500
  int _currentValue = 500; // Current selected value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Wheel Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WheelSlider(
              totalCount: _totalCount,
              initValue: _initValue,
              onValueChanged: (val) {
                setState(() {
                  _currentValue = val * 100; // Each step increases by 100
                });
              },
              hapticFeedbackType: HapticFeedbackType.vibrate,
              pointerColor: Colors.redAccent,
              enableAnimation: false,
            ),
            const SizedBox(height: 20),
            Text(
              '$_currentValue',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
