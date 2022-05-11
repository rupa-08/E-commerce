import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  final String? img;
  const SplashContent({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        img!,
        fit: BoxFit.cover,
        //fit: BoxFit.fitWidth,
      ),
    );
  }
}
