import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ppayment_ extends StatefulWidget {
  const ppayment_({Key? key}) : super(key: key);

  @override
  _ppayment_State createState() => _ppayment_State();
}

class _ppayment_State extends State<ppayment_> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Container(
        child: ListView(
          children: [
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.29,
                  child: Card(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assests/payment/credit_card.jpg",
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text("Credit Card",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      )),
                                ],
                              ),
                              const Text("12234566778", style: TextStyle(color: Colors.grey),),
                            ],
                          )
                        ],
                      )),
                ),

                IconButton(onPressed: (){}, icon: const Icon(Icons.radio_button_checked, color: Colors.orange,))
              ],
            ),


            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.29,
                  child: Card(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assests/payment/paypal.png",
                            width: 80,
                            height: 80,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text("Paypal",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      )),
                                ],
                              ),
                              const Text("1190223378", style: TextStyle(color: Colors.grey),),
                            ],
                          )
                        ],
                      )),
                ),

                IconButton(onPressed: (){}, icon: const Icon(Icons.radio_button_off, color: Colors.orange,))
              ],
            ),



            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.29,
                  child: Card(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assests/payment/download.png",
                            width: 80,
                            height: 70,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text("Google pay",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                      )),
                                ],
                              ),
                              const Text("1229019201", style: TextStyle(color: Colors.grey),),
                            ],
                          )
                        ],
                      )),
                ),

                IconButton(onPressed: (){}, icon: const Icon(Icons.radio_button_off, color: Colors.orange,))
              ],
            ),
            const SizedBox(height: 20,),



            SizedBox(
              width: MediaQuery.of(context).size.width/1.2,
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Card Number"),
                    ],
                  ),
                  SizedBox(height: 11,),


                  const TextField(
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      suffixIcon: Icon(Icons.credit_card, color: Colors.redAccent),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(17),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 20,),
                SizedBox(
                  width: MediaQuery.of(context).size.width/2.5,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Text("Expiry Date"),
                        ],
                      ),
                      SizedBox(height: 11,),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: "Date",
                          prefixIcon: Icon(Icons.calendar_today_sharp, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(width: 20,),

                SizedBox(
                  width: MediaQuery.of(context).size.width/2.5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("CSV"),
                        ],
                      ),
                      SizedBox(height: 11,),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: ".....",
                          prefixIcon: Icon(Icons.lock, color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
