import 'package:ecom/check_out/check_out_scrn.dart';
import 'package:ecom/payment/body.dart';
import 'package:ecom/payment/payment_btn.dart';
import 'package:flutter/material.dart';

class payment_ extends StatefulWidget {
  const payment_({Key? key}) : super(key: key);

  @override
  _payment_State createState() => _payment_State();
}

class _payment_State extends State<payment_> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => check_out()));
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
          "PAYMENT",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ppayment_(),
      bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: Column(

              children: <Widget>[Expanded(child: payment_p())],
          )),
    );
  }
}
