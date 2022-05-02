import 'package:flutter/material.dart';

class StepperDemo extends StatefulWidget {
  const StepperDemo({Key? key}) : super(key: key);

  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stepper(
          currentStep: 0,
          steps: const [
            Step(
              title: Text("Step 1"),
              content: Text("Information Step 1"),
            ),
            Step(
              title: Text("Step 2"),
              content: Text("Information Step 2"),
            ),
            Step(
              title: Text("Step 3"),
              content: Text("Information Step 3"),
            ),
          ],
        ),
      ),
    );
  }
}
