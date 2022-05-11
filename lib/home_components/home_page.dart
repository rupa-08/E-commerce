import 'package:ecom/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:ecom/cart/cart_screen.dart';
import 'package:ecom/home_components/carousel.dart';
import 'package:ecom/home_components/icon_bar.dart';
import 'package:ecom/main.dart';
import 'package:ecom/product_components/products.dart';
import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {},
                );
              },
            ),
            actions: <Widget>[
              Stack(
                children: [
                  Card(
                    color: Colors.deepOrange.shade50,
                    child: IconButton(
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
                    ),
                  ),
                  Positioned(
                    top: 9,
                    right: 9,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        shape: BoxShape.circle,
                      ),
                      child: const Text(
                        "2",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ]),
        body: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 12,
                        width: MediaQuery.of(context).size.width / 1.2,
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10, 7, 0, 10),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search Products",
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.mic),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height / 19,
                        width: MediaQuery.of(context).size.width / 9,
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                                onPressed: () {}, icon: const Icon(Icons.qr_code))),
                      ),
                    ),
                  ],
                ),
                const carou_(),
                const i_bar(),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: const [
                      Text(
                        "Products",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                product_(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
