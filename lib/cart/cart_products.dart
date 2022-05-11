import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart_product extends StatefulWidget {
  const cart_product({Key? key}) : super(key: key);

  @override
  _cart_productState createState() => _cart_productState();
}

class _cart_productState extends State<cart_product> {
  var Products_on_the_cart = [
    {
      "name": "Geans",
      "picture": "assests/products/geans.jpg",
      "old_price": 820,
      "price": 805,
      "quantity": 1,
    },
    {
      "name": "Laptop",
      "picture": "assests/products/laptop.jpg",
      "old_price": 100,
      "price": 95,
      "quantity": 1,
    },
    {
      "name": "Red Dress",
      "picture": "assests/products/mobile.jpg",
      "old_price": 140,
      "price": 55,
      "quantity": 1,
    },
    {
      "name": "Blue Dress",
      "picture": "assests/products/air_pods.jpg",
      "old_price": 170,
      "price": 50,
      "quantity": 1,
    },
    {
      "name": "Purple High Hills",
      "picture": "assests/products/air_force.jpg",
      "old_price": 149,
      "price": 58,
      "quantity": 1,
    },
    {
      "name": "Red High Hills",
      "picture": "assests/products/geans.jpg",
      "old_price": 123,
      "price": 53,
      "quantity": 1,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"],
            cart_prod_picture: Products_on_the_cart[index]["picture"],
            cart_prod_price: Products_on_the_cart[index]["price"],
            cart_prod_quantity: Products_on_the_cart[index]["quantity"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_quantity;

  Single_cart_product(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_quantity});

  @override
  Widget build(BuildContext context) {
    return Card(

        child: ListTile(
      leading: Image.asset(
        cart_prod_picture,
        height: 100,
        width: 100,
      ),
      title: Text(cart_prod_name,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          )),
      subtitle: Column(
        children: <Widget>[
          const SizedBox(
            height: 9,
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              Text(
                "(5.0)",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Text("\$${cart_prod_price}",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold)),
              ),
              Spacer(),
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
                  Text("$cart_prod_quantity"),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child:const Expanded(
                        child: Icon(
                          Icons.add,
                          color: Colors.orange,
                        )),
                  ),


                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),

    ));
  }
}
