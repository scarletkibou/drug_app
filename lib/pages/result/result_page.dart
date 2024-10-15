import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/mock_data_flutter.dart'; // Assume this is where your mock data is stored
import 'package:kuy2/pages/controller/flow1.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  flow1Controller conx = Get.find<flow1Controller>();

  List<Map<String, dynamic>> getMatchingData() {
    // Get user's BMI and Years from controller
    double userBmi = conx.bmi.value;
    String userYears = conx.selectedAgeRange.value;

    // Determine BMI range
    double bmiRange;
    if (userBmi < 18.5) {
      bmiRange = 18.5; // Example range, adjust if necessary
    } else if (userBmi < 25) {
      bmiRange = 25;
    } else if (userBmi < 30) {
      bmiRange = 30;
    } else {
      bmiRange = 31; // If BMI > 30, use 31 as the range for filtering
    }

    // Filter the mock data based on BMI and Years
    return mockData.where((data) {
      // Match BMI and Years, and also include entries where 'Years' is 'nan'
      return data['BMI'] == bmiRange &&
          (data['Years'] == userYears || data['Years'] == 'nan');
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // Fetch matching data based on user's BMI and selected year range
    List<Map<String, dynamic>> filteredData = getMatchingData();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result Page'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: filteredData.isEmpty
            ? const Center(
                child: Text(
                  'No matching data found',
                  style: TextStyle(fontSize: 20, color: Colors.red),
                ),
              )
            : ListView.builder(
                itemCount: filteredData.length,
                itemBuilder: (context, index) {
                  var data = filteredData[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Active Ingredient: ${data['active ingredient']}',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Drug Name: ${data['Drug name']}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Price: ${data['price']}',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
