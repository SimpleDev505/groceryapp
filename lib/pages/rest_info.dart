import 'package:flutter/material.dart';
import 'package:groceryapp/rating_item.dart';
import 'package:groceryapp/tracktime_item.dart';

class RestInfo extends StatelessWidget {
  const RestInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => {
                    Navigator.of(context).pop(),
                  },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(children: [
              Container(
                height: 450,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35))),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.sizeOf(context).width,
                height: 150,
                child: Container(
                  decoration: BoxDecoration(
                      gradient:
                          LinearGradient(begin: Alignment.topRight, stops: [
                        0,
                        .9
                      ], colors: [
                        Colors.white.withValues(alpha: 0),
                        const Color.fromARGB(255, 253, 138, 138)
                            .withValues(alpha: .7)
                      ]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 65),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                            )
                          ],
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "NULL-Name",
                                style: TextStyle(
                                    height: 2,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              TracktimeItem()
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width / 1.6,
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: RatingItem(
                                    ratingitemwidth: 60,
                                    ratingitembgcolor: Colors.green,
                                    ratingitemcolor: Colors.white,
                                    ratingitemiconcolor: Colors.white,
                                    ratingitemborderradius:
                                        BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        )));
  }
}
