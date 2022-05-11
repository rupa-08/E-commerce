import 'package:ecom/cart/cart_screen.dart';
import 'package:ecom/favourite/favourite.dart';
import 'package:ecom/home_components/home_page.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int currentIndex = 0;

  setCurrentPageIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final tabs = [

   home_page(),
    Cart(),
    fav(),
    const Center(
        child: Text(
          "Cart",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: IndexedStack(
          index: currentIndex,
          children: tabs,
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 38,
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      setCurrentPageIndex(0);
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: currentIndex == 0
                                ? Colors.deepOrange.withOpacity(0.2)
                                : Colors.white),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon:
                                Icon(Icons.home, color: Colors.deepOrange)),
                            currentIndex == 0
                                ? const Text(
                              "Home",
                              style: TextStyle(color: Colors.deepOrange),
                            )
                                : const SizedBox()
                          ],
                        ))),
                GestureDetector(
                  onTap: () {
                    setCurrentPageIndex(1);
                  },
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: currentIndex == 1
                            ? Colors.deepOrange.withOpacity(0.2)
                            : Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_bag_outlined,
                                color: Colors.deepOrange)),
                        const SizedBox(
                          width: 5,
                        ),
                        currentIndex == 1
                            ? const Text(
                          "cart",
                          style: TextStyle(color: Colors.deepOrange),
                        )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      setCurrentPageIndex(2);
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: currentIndex == 2
                                ? Colors.deepOrange.withOpacity(0.2)
                                : Colors.white),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_outline,
                                    color: Colors.deepOrange)),
                            currentIndex == 2
                                ? const Text(
                              "Favourite",
                              style: TextStyle(color: Colors.deepOrange),
                            )
                                : const SizedBox()
                          ],
                        ))),
                GestureDetector(
                  onTap: () {
                    setCurrentPageIndex(3);
                  },
                  child: Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: currentIndex == 3
                            ? Colors.deepOrange.withOpacity(0.2)
                            : Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person_outline_rounded,
                                color: Colors.deepOrange)),
                        currentIndex == 3
                            ? const Text(
                          "profile",
                          style: TextStyle(color: Colors.deepOrange),
                        )
                            : const SizedBox()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
