import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuy2/pages/bmi/bmi_page.dart';
import 'package:kuy2/pages/button/buttonanimation.dart';
import 'package:kuy2/pages/question/Allpops.dart';

enum conditions {
  concern_Condition1,
  concern_Condition2,
  concern_Condition3,
  concern_Condition4
}

class Concernpop extends StatelessWidget {
  const Concernpop({super.key});

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
                      'CONCERN POPS?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      children: <Widget>[
                        ListTile(
                          title: Text('Concern_Condition1'),
                          leading: Radio<conditions>(
                            value: conditions.concern_Condition1,
                            groupValue: null,
                            onChanged: null,
                          ),
                        ),
                        ListTile(
                          title: Text('Concern_Condition2'),
                          leading: Radio<conditions>(
                            value: conditions.concern_Condition2,
                            groupValue: null,
                            onChanged: null,
                          ),
                        ),
                        ListTile(
                          title: Text('Concern_Condition3'),
                          leading: Radio<conditions>(
                            value: conditions.concern_Condition3,
                            groupValue: null,
                            onChanged: null,
                          ),
                        ),
                        ListTile(
                          title: Text('Concern_Condition4'),
                          leading: Radio<conditions>(
                            value: conditions.concern_Condition4,
                            groupValue: null,
                            onChanged: null,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              ElevatedButton(
                  onPressed: () {
                    //  drospirenon 4mg here a rai mai roo
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 127, 127),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    minimumSize: Size(double.infinity, 60),
                  ),
                  child: const AnimatedButton()),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.to(Allpops());
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
