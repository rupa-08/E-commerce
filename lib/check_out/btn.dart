import 'package:ecom/payment/payment_scrn.dart';
import 'package:flutter/material.dart';

class chk_btn extends StatefulWidget {
  const chk_btn({Key? key}) : super(key: key);

  @override
  _chk_btnState createState() => _chk_btnState();
}

class _chk_btnState extends State<chk_btn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
        children: [
          Expanded(
              child:  SizedBox(
                width: 250,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>payment_()));
                    },
                  child: const Text("Proceed", style: TextStyle(color: Colors.white,)
                  ),
                  color: Colors.orange,),
              )


          ),
          const SizedBox(height: 20,)
        ],
      ),);
  }
}
