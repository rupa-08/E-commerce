import 'package:ecom/confirm/confirm_btn.dart';
import 'package:ecom/payment/body.dart';
import 'package:ecom/payment/payment_scrn.dart';
import 'package:flutter/material.dart';

class con_firm extends StatefulWidget {
  const con_firm({Key? key}) : super(key: key);

  @override
  _con_firmState createState() => _con_firmState();
}

class _con_firmState extends State<con_firm> {
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
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>ppayment_()));
                },
              );
            },
          ),
          title: Text(
            "CONFIRMATION",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    child: Image.asset("assests/img.png")
                  ),
                ],
              ),

              Text("Please Confirm Your Payment.")
            ],
          ),
        ),

      bottomNavigationBar: Container(
          color: Colors.white,
          height: 70,
          child: Column(
            children: <Widget>[Expanded(child: confirm_btn())],
          )),

    );
  }
}
