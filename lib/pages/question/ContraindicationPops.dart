import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuy2/pages/bmi/bmi_page.dart';
import 'package:kuy2/pages/button/buttonanimation.dart';
import 'package:kuy2/pages/hospital/hospital.dart';
import 'package:kuy2/pages/question/ConcernCoC.dart';
import 'package:kuy2/pages/question/Concernpop.dart';

class Contraindicationpops extends StatelessWidget {
  const Contraindicationpops({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 30,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            decoration: const BoxDecoration(
                color: Color(0xffF7F7F9), shape: BoxShape.circle),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: Column(
                  children: [
                    Text(
                      'CONTRAINDICATION POPS?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                margin: const EdgeInsets.all(4),
                padding: EdgeInsets.all(10),
                color: Color.fromARGB(255, 255, 229, 236),
                child: const Text(
                    'Breast Cancer\nCurrent and history of ischemic heart disease\nDecompensated\nCirrhosis\nHistory of Stroke\nHepatocellular adenoma\nMalignant Deep vein thrombosis\nPulmonary embolism',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.to(Hospital());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 127, 127),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(double.infinity, 60),
                ),
                child: const AnimatedButton(),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(Concernpop());
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 127, 127),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(double.infinity, 60),
                ),
                child: Text(
                  'NO',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
