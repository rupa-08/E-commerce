import 'package:ecom/confirm/confirm.dart';
import 'package:flutter/material.dart';

class payment_p extends StatefulWidget {
  const payment_p({Key? key}) : super(key: key);

  @override
  _payment_pState createState() => _payment_pState();
}

class _payment_pState extends State<payment_p> {
  @override
  Widget build(BuildContext context) {
    return Card(

      child:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          child: Column(
            children: [

              Row(children: const [
                Text("Total :", style: TextStyle(fontWeight: FontWeight.bold),),
                Spacer(),
                Text("\$760", style: TextStyle(fontWeight: FontWeight.bold),)
              ],),
              Expanded(
                  child:  SizedBox(

                    width: 250,
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>con_firm()));},
                      child: const Text("Payment", style: TextStyle(color: Colors.white,)
                      ),
                      color: Colors.orange,),
                  )


              ),
              const SizedBox(height: 2,)
            ],
          ),
        ),
      ),);
  }
}
