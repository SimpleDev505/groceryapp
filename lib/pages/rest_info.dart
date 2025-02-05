import 'package:flutter/material.dart';
import 'package:groceryapp/rating_item.dart';
import 'package:groceryapp/tracktime_item.dart';

class RestInfo extends StatelessWidget {
  const RestInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => {
                    Navigator.of(context).pop(),
                  },
              icon: Icon(Icons.arrow_back_ios)),
        ),
        body: Expanded(
            child: Column(
          children: [
            Stack(children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
              ),
              Positioned(
                bottom: 0,
                width: MediaQuery.sizeOf(context).width,
                height: 150,
                child: Container(
                  decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.00, -1.00),
                        end: Alignment(0, 1),
                        colors: [Colors.white.withAlpha(0), Color(0xB2FD8A8A)],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, bottom: 20, top: 65),
                    child: Container(
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 2, color: Color(0xFFD1D1D1)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "NULL-Name",
                                    style: TextStyle(
                                      height: 2,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF0B0B0B),
                                    ),
                                  ),
                                  TracktimeItem()
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 0, top: 10, right: 10),
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    RatingItem(
                                      ratingitemwidth: 60,
                                      ratingitembgcolor: Colors.green,
                                      ratingitemcolor: Colors.white,
                                      ratingitemiconcolor: Colors.white,
                                      ratingitemfontsize: 12,
                                      ratingitemfontwieght: FontWeight.w400,
                                      ratingitemiconsize: 18,
                                      ratingitemborderradius:
                                          BorderRadius.circular(5),
                                    ),
                                    RatingItem(
                                      ratingitemwidth: 60,
                                      ratingitemicon: Icons.thumb_up_sharp,
                                      ratingitemiconcolor: Colors.grey[300],
                                      ratingitemiconsize: 16,
                                      ratingitemcolor: Color(0xFF585858),
                                      ratingitemfontwieght: FontWeight.normal,
                                      ratingitemfontsize: 12,
                                      ratingitempaddingfont: 4,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.25)),
                      hintText: 'Search for dishes'),
                ),
              ),
            ),
            //list of menu items

            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  itemCount: 15, // Number of sections
                  separatorBuilder: (context, index) {
                    return Divider(
                      height: 1,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 200,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 12,
                        children: [
                          //left
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 15,
                            children: [
                              Text(
                                "Dish Name",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              RatingItem(
                                ratingitemwidth: 60,
                                ratingitemicon: Icons.currency_rupee,
                                ratingitemiconcolor: Color(0xFF9D9D9D),
                                ratingitemfontwieght: FontWeight.w400,
                                ratingitemfontsize: 16,
                                ratingitemiconsize: 18,
                                ratingamount: "999",
                              ),
                              //more
                              SizedBox(
                                height: 32,
                                child: TextButton.icon(
                                  onPressed: () => {},
                                  iconAlignment: IconAlignment.end,
                                  style: TextButton.styleFrom(
                                    foregroundColor: Colors.black,
                                    side: BorderSide(
                                      color: Colors.black,
                                      width: 0,
                                    ),
                                    iconColor: Colors.black,
                                    iconSize: 32,
                                    padding: EdgeInsets.only(
                                      left: 12,
                                      right: 5,
                                    ),
                                  ),
                                  label: Text(
                                    "More Details",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  icon: Icon(Icons.arrow_right_sharp),
                                ),
                              ),

                              //rating dish
                              const RatingItem(
                                ratingitemheight: 25,
                                ratingitemwidth: 55,
                                ratingitembgcolor: Colors.transparent,
                                ratingitemiconcolor: Colors.amber,
                                ratingitemborderradius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                            ],
                          ),
                          //right
                          Stack(
                            clipBehavior: Clip.none,
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                width: 190,
                                height: 145,
                                decoration: ShapeDecoration(
                                  color: Color(0xFFD9D9D9),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: -10,
                                child: SizedBox(
                                    height: 32,
                                    child: ElevatedButton(
                                      onPressed: () => {},
                                      style: ButtonStyle(
                                        overlayColor:
                                            WidgetStatePropertyAll<Color>(
                                                Colors.lightGreen),
                                      ),
                                      child: Text(
                                        'ADD',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        )));
  }
}
