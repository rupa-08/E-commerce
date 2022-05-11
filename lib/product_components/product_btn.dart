

import 'package:ecom/cart/cart_screen.dart';
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
      height: 100,
      child: Card(
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: const Expanded(
                            child: Icon(
                              Icons.remove,
                              color: Colors.orange,
                            ))),
                    const SizedBox(width: 4,),
                    Text("2"),
                    const SizedBox(width: 4,),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child:const Expanded(
                          child: Icon(
                            Icons.add,
                            color: Colors.orange,
                          )),
                    ),
                    Spacer(),
                    
                    Text("Total: \$250")


                  ],
                ),
                SizedBox(height: 14,),
                Expanded(
                    child:  Row(

                      children: [
                        Icon(Icons.favorite_rounded, color: Colors.red,),
                        SizedBox(width: 20,),
                        SizedBox(
                          width: 250,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>Cart()));},
                            child: const Text("Add to Cart", style: TextStyle(color: Colors.white,)
                            ),
                            color: Colors.orange,),
                        ),
                      ],
                    )


                ),
                const SizedBox(height: 2,)
              ],
            ),
          ),
        ),),
    );
  }
}
