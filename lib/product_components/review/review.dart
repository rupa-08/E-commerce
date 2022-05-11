import 'package:flutter/material.dart';

class review extends StatelessWidget {
  const review({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 80,
            child: Card(
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Harry",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ],
                          ),
                          Text("Amazing Service."),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),


          Container(
            height: 80,
            child: Card(
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Kris",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [

                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Text("Love it."),
                    ],
                  )
                ],
              ),
            ),
          ),


          Container(
            height: 80,
            child: Card(
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Yangchen",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [

                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Text("Lovely."),
                    ],
                  )
                ],
              ),
            ),
          ),


          Container(
            height: 80,
            child: Card(
              child: Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 20,)
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Mika",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: const [

                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                        ],
                      ),
                      Text("Wonderful!!!!!!"),
                    ],
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
