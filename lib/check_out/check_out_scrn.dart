import 'package:ecom/button.dart';
import 'package:ecom/cart/cart_screen.dart';
import 'package:ecom/check_out/body.dart';
import 'package:ecom/check_out/btn.dart';
import 'package:flutter/material.dart';

class check_out extends StatefulWidget {
  const check_out({Key? key}) : super(key: key);

  @override
  _check_outState createState() => _check_outState();
}

class _check_outState extends State<check_out> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
            );
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.more_vert, color: Colors.grey),
              onPressed: () {}),
        ],
        title: const Text(
          "CHECK OUT",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: chk_out_bdy(),
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: Column(
            children: <Widget>[Expanded(child: chk_btn())],
          )),
    );
  }
}
