import 'package:ecom/product_components/product_details.dart';
import 'package:flutter/material.dart';

class fav extends StatefulWidget {
  const fav({Key? key}) : super(key: key);

  @override
  _favState createState() => _favState();
}

class _favState extends State<fav> {
  var product_list = [
    {
      "discount": "10% Off",
      "name": "Blazer",
      "picture": "assests/images/carousel/c1.png",
      "old_price": 120,
      "price": 85,
    },
    {
      "discount": "10% Off",
      "name": "Women Blazer",
      "picture": "assests/images/carousel/c1.png",
      "old_price": 100,
      "price": 95,
    },
    {
      "discount": "10% Off",
      "name": "Women Blazer",
      "picture": "assests/images/carousel/c1.png",
      "old_price": 100,
      "price": 95,
    },
    {
      "discount": "10% Off",
      "name": "Women Blazer",
      "picture": "assests/images/carousel/c1.png",
      "old_price": 100,
      "price": 95,
    },
    {
      "name": "Women Blazer",
      "picture": "assests/images/carousel/c1.png",
      "old_price": 100,
      "price": 95,
      "discount": "20% Off",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemCount: product_list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.5),
            crossAxisSpacing: 3,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (BuildContext context, int index) {
            return similar_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
              discount: product_list[index]['discount'],
            );
          }),
    );
  }
}


class similar_prod extends StatelessWidget {
  final discount;
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const similar_prod(
      {Key? key,
        this.prod_name,
        this.prod_picture,
        this.prod_old_price,
        this.prod_price,
        this.discount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: new Text("hero 1"),
        child: Material(
            child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => product_details(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_picture: prod_picture,
                    ))),
                child: GridTile(
                  child: Container(
                    //height: 10,
                    child: Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(discount,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0, color: Colors.blue)),
                              ),
                              Spacer(),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_rounded, color: Colors.redAccent,)),
                              )
                            ],
                          ),
                          Image.asset(
                            prod_picture,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(prod_name,
                                        style: const TextStyle(
                                            color: Colors.grey)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("\$${prod_price}",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "\$${prod_old_price}",
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          decoration:
                                          TextDecoration.lineThrough),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}
