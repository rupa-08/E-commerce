import 'package:ecom/product_components/product_btn.dart';
import 'package:ecom/product_components/products.dart';
import 'package:ecom/product_components/review/review.dart';
import 'package:flutter/material.dart';

class product_details extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_picture;

  const product_details(
      {Key? key,
      this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_picture})
      : super(key: key);

  @override
  _product_detailsState createState() => _product_detailsState();
}

class _product_detailsState extends State<product_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "PRODUCT",
          style: TextStyle(color: Colors.black),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {},
            );
          },
        ),
        actions: <Widget>[
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: Colors.deepOrange.shade50,
            child: IconButton(
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.black,
                ),
                onPressed: () {}),
          ),
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          height: 250.0,
          child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(
                  widget.product_detail_picture,
                  fit: BoxFit.contain,
                ),
              ),
              footer: Container(
                  color: Colors.white,
                  child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 230),
                        child: Text(widget.product_detail_name,
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      title: Row(children: <Widget>[
                        Expanded(
                          child: Text("\$${widget.product_detail_new_price}",
                              style: const TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        )
                      ])))),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Item Size"),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "S",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: const BorderSide(color: Colors.orange)),
              ),
              const SizedBox(
                width: 6,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "M",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: BorderSide(color: Colors.orange)),
              ),
              const SizedBox(
                width: 6,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "L",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: const BorderSide(color: Colors.orange)),
              ),
              const SizedBox(
                width: 6,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "XL",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    side: const BorderSide(color: Colors.orange)),
              ),
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  icon: const Icon(Icons.add_shopping_cart,
                      color: Colors.redAccent),
                  onPressed: () {}),
            ],
          ),
        ),
        Column(
          children: [
            tab_bar_two(),

          ],
        ),

      ]),
      bottomNavigationBar: btn(),
    );
  }
}

class tab_bar_two extends StatefulWidget {
  @override
  _tab_bar_twoState createState() => _tab_bar_twoState();
}

class _tab_bar_twoState extends State<tab_bar_two> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: TabBar(
                    onTap: (index) {},
                    indicatorColor: Colors.deepOrange,
                    unselectedLabelColor: Colors.grey,
                    labelColor: Colors.black,
                    isScrollable: true,
                    padding: const EdgeInsets.all(9),
                    tabs: const [
                      Tab(
                        text: 'Description',
                      ),
                      Tab(text: 'Review'),
                    ]),
              ),
            ],
          ),
          Container(
            height: 400, //height of TabBarView
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.5))),
            child: TabBarView(children: [
              Container(
                child: SizedBox(
                  child: ListView(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                            "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when "
                            "an unknown printer took a galley of type and scrambled it to make a type specimen "
                            "book. It has survived not only five centuries, but also the leap into electronic "
                            "typesetting, remaining essentially unchanged. It was popularised in the 1960s with "
                            "the release of Letraset sheets containing Lorem Ipsum passages, and more recently "
                            "with desktop publishing software like Aldus PageMaker including versions of Lorem "
                            "Ipsum."),
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [review()],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
