import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'scroll_item.dart';

void main() {
  
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 15, 0, 0),
            child: Row(
              children: [
                Icon(
                  Icons.near_me,
                  color: Colors.amber[800],
                  size: 20,
                ),
                Row(
                  children: [
                    const Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Align(
                      widthFactor: 6,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.account_circle,
                        size: 45,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 100),
            child: const Text(
              "NULL-address address address address address address address address",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 40,
              child: TextField(
                maxLines: 1,
                cursorHeight: 18,
                style: TextStyle(
                  fontSize: 15,
                  height: 2,
                ),
                autofocus: false,
                obscureText: false,
                decoration: InputDecoration(
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.search_outlined),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: VerticalDivider(
                            thickness: 2,
                            width: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(Icons.mic_rounded),
                        )
                      ],
                    ),
                    suffixIconColor: Colors.amber[800],
                    contentPadding: EdgeInsets.only(left: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.grey, width: 1.25)),
                    hintText: 'Search for grocery'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 150,
                child: CarouselSlider.builder(
                    key: PageStorageKey('offers'),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int itemIndex,
                            int pageViewIndex) =>
                        Container(
                          //this causes more rebuilds and slows flutter
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              )),
                          child: Center(
                            child: Text(
                              //this causes more rebuilds and slows flutter
                              "NULL $itemIndex",
                              style:
                                  TextStyle(fontSize: 45, color: Colors.grey),
                            ),
                          ),
                        ),
                    options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlayInterval: Duration(seconds: 4),
                        scrollDirection: Axis.horizontal,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        enlargeCenterPage: true,
                        enlargeFactor: .7,
                        autoPlay: true))),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: 10),
                itemCount: 3, // Number of sections
                itemBuilder: (context, index) {
                  // Section Titles
                  List<String> titles = [
                    "TOP RATED NEAR YOU",
                    "TRENDING NEAR YOU",
                    "TRENDING CTG"
                  ];

                  return Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          SizedBox(
                            height: 40,
                            width: MediaQuery.sizeOf(context).width,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      titles[index],
                                      key: ValueKey(titles[index]),
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Divider(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      ScrollItem(
                        requiretime: index == 2 ? false : true,
                        scrollSnapItem: false,
                      ),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
