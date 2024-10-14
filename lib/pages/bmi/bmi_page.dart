import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuy2/pages/age/year_page.dart';

class Bmi extends StatefulWidget {
  @override
  _BmiState createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double? _result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
          backgroundColor: Colors.white),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'height in cm',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: Text(
                "Calculate BMI",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: calculateBMI,
            ),
            SizedBox(height: 15),
            Text(
              _result == null
                  ? "Enter Value"
                  : "${_result!.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.redAccent,
                fontSize: 19.4,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 127, 127),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                minimumSize: const Size(double.infinity, 60),
                elevation: 0,
              ),
              onPressed: _result != null
                  ? () {
                      Get.to(AgeSelectionPage());
                    }
                  : null,
              child: const Text(
                "NEXT",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // ElevatedButton(
            //   child: const Text(
            //     "next",
            //     style: TextStyle(color: Colors.black),
            //   ),
            //   onPressed: () {
            //     Get.to(AgeSelectionPage());
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  void calculateBMI() {
    double height = double.parse(_heightController.text) / 100;
    double weight = double.parse(_weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    setState(() {});
  }
}
