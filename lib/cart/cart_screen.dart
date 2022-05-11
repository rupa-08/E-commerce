import 'package:ecom/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:ecom/button.dart';
import 'package:ecom/cart/cart_products.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {


  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: InkWell(
          child: const Text("CART", style: TextStyle(color: Colors.black),),
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomBar()));},

        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>BottomBar()));},
            );
          },
        ),
        actions: <Widget>[
           IconButton(icon: const Icon(
              Icons.more_vert,
              color: Colors.deepOrange),
              onPressed: (){}
          ),
        ],
      ),

      body: cart_product(),

      bottomNavigationBar: Container(
        color: Colors.white,
        height: 120,
          child: Column(
            children: <Widget>[
              Expanded(child: Row(
                children: const [
                  SizedBox(width: 20,),
                  Text("Selected Items(2)", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  Spacer(),
                  Text("Total: \$760.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                  SizedBox(width: 20,),
                ],
              )),
              Expanded(child: btn())

              
            ],
          )
      ),
    );
  }
}
