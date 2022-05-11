import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chk_out_bdy extends StatefulWidget {
  const chk_out_bdy({Key? key}) : super(key: key);

  @override
  _chk_out_bdyState createState() => _chk_out_bdyState();
}

class _chk_out_bdyState extends State<chk_out_bdy> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
            child: Column(children: [
          Row(
            children: const [
              Text(
                "Products Lists",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Card(
              child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assests/products/laptop.jpg",
                width: 80,
                height: 80,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Laptop",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                  const SizedBox(height: 3,),
                  Row(
                    children:  const[
                      Icon(Icons.star, color: Colors.orange,),
                      Text("(5.0)", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  const SizedBox(height: 3,),
                  Row(
                    children: const [
                      Text("\$900 x 2"),
                      SizedBox(width: 150,),
                      Text("\$1800", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              )
            ],
          )),
          Card(
              child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Image.asset(
                "assests/products/air_pods.jpg",
                width: 80,
                height: 80,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text("Air Pods",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      )),
                  SizedBox(height: 3,),
                  Row(
                    children:  const[
                      Icon(Icons.star, color: Colors.orange,),
                      Text("(5.0)", style: TextStyle(color: Colors.grey),)
                    ],
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children: const [
                      Text("\$100 x 2"),
                      SizedBox(width: 150,),
                      Text("\$200", style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ],
              )
            ],
          )),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              Text("Order Summery",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          SizedBox(
            height: 100,
            width: 900,
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text("Shipping fee:"),
                            SizedBox(
                              width: 230,
                            ),
                            Text("\$100")
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Text("Subtotal:"),
                            SizedBox(
                              width: 248,
                            ),
                            Text("\$1240")
                          ],
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                         Row(
                           children: const [
                             Text("Total:"),
                             SizedBox(
                               width: 275,
                             ),
                             Text("\$100")
                           ],
                         )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              Text(
                "Delivery Details",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 135,
            width: 900,
            child: Row(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Icons.person_outline_rounded,
                              color: Colors.lightBlue,
                            ),
                            Text("Name: "),
                            SizedBox(
                              width: 205,
                            ),
                            Text("Hello me"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.redAccent,
                            ),
                            Text("Location:"),
                            SizedBox(
                              width: 190,
                            ),
                            Text("Kathmandu"),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.call_sharp,
                              color: Colors.green,
                            ),
                            Text("Phone:"),
                            SizedBox(
                              width: 197,
                            ),
                            Text("29093230"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ])));
  }
}
