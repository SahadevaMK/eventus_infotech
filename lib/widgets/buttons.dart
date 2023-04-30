import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String title;
  const Buttons({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xff3192cc),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
