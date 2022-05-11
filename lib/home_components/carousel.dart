import 'package:ecom/home_components/carsousel_content.dart';
import 'package:flutter/material.dart';

class carou_ extends StatefulWidget {
  const carou_({Key? key}) : super(key: key);

  @override
  _carou_State createState() => _carou_State();
}

class _carou_State extends State<carou_> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"img": "assests/images/carousel/c1.png"},
    {"img": "assests/images/carousel/c2.png"},
    {"img": "assests/images/carousel/c3.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        //color: Colors.black,
        height: 130,
        width: 1000,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    img: splashData[index]["img"],
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => dot_build(index: index),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer dot_build({int? index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index
            ? Colors.deepOrange.withOpacity(0.5)
            : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
