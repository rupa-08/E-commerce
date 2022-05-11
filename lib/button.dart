import 'package:ecom/check_out/check_out_scrn.dart';
import 'package:flutter/material.dart';

class btn extends StatefulWidget {
  const btn({Key? key}) : super(key: key);

  @override
  _btnState createState() => _btnState();
}

class _btnState extends State<btn> {
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
                  onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>check_out()));},
                  child: const Text("Checkout", style: TextStyle(color: Colors.white,)
                  ),
                  color: Colors.orange,),
              )


          ),
          const SizedBox(height: 20,)
        ],
      ),);
  }
}
