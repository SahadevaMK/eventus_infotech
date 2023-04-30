import 'package:flutter/material.dart';

class SampleTexts extends StatelessWidget {
  final String text;
  const SampleTexts({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
      ),
    );
  }
}
