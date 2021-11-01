import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Animated Padding'),
        ),
        body: AnimatedPaddingWidget());
  }
}

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double padValue = 0.0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        Text('Padding: $padValue'),
        ElevatedButton(
          onPressed: () {
            _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
          },
          child: const Text('Change Padding'),
        )
      ],
    );
  }
}
