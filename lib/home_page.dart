import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //indicator
  // int _currentStep = 0;

  // List<Step> _steps = [
  //   Step(
  //     title: Text('Page 1'),
  //     content: Text('This is the first page'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Page 2'),
  //     content: Text('This is the second page'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Page 3'),
  //     content: Text('This is the third page'),
  //     isActive: true,
  //   ),
  //   Step(
  //     title: Text('Page 4'),
  //     content: Text('This is the fourth page'),
  //     isActive: true,
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Icon(
                  Icons.person,
                  // color: Colors.greenAccent,
                  color: Color(0xff208C8C),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 20,
                alignment: Alignment.topLeft,
                child: const Text(
                  "What's, Your Name?",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Name",
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xffC3C4CD),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 300),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                height: 20,
                alignment: Alignment.topLeft,
                child: const Text(
                  " Some text about name?",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff208C8C), // Background color
                  ),
                  child: const Text(
                    '                                                    Continue                                                    ',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ),
            ),
            // Stepper(
            //   currentStep: _currentStep,
            //   steps: _steps,
            //   onStepTapped: (int index) {
            //     setState(() {
            //       _currentStep = index;
            //     });
            //   },
            //   onStepContinue: () {
            //     setState(() {
            //       if (_currentStep < _steps.length - 1) {
            //         _currentStep += 1;
            //       }
            //     });
            //   },
            //   onStepCancel: () {
            //     setState(() {
            //       if (_currentStep > 0) {
            //         _currentStep -= 1;
            //       }
            //     });
            //   },
            // ),
            // Expanded(
            //   child: Container(
            //     height: 5.0,
            //     decoration: BoxDecoration(
            //       color: Colors.blue, // Change this to the color you want
            //     ),
            //     child: FractionallySizedBox(
            //       widthFactor: (_currentStep + 1) / _steps.length,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
