import 'package:flutter/material.dart';
import 'package:groceryapp/pages/rest_info.dart';
import 'package:groceryapp/rating_item.dart';
import 'package:groceryapp/tracktime_item.dart';

class ScrollItem extends StatelessWidget {
  const ScrollItem(
      {super.key,
      this.scrollSnapItem = false,
      this.scrollItemWidth = 150,
      this.restname = "NULL-rest-name",
      this.requiretime = true,
      this.requirerating = true,
      this.holdingimg = "null"});
  final bool scrollSnapItem;
  final double scrollItemWidth;
  final String restname;
  final bool requiretime;
  final bool requirerating;
  final String holdingimg;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(context, _createroute(RestInfo())),
                child: Card(
                  key: PageStorageKey('rest_Card'),
                  child: holdingimg == "null"
                      ? SizedBox(
                          height: 100,
                          width: scrollItemWidth,
                        )
                      : Image.asset(
                          holdingimg,
                          fit: BoxFit.contain,
                        ),
                ),
              ),
              Column(
                children: [
                  Text(
                    restname,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (requirerating)
                        const RatingItem(
                          ratingitemheight: 25,
                          ratingitemwidth: 55,
                          ratingitembgcolor: Colors.transparent,
                          ratingitemiconcolor: Colors.amber,
                          ratingitemborderradius:
                              BorderRadius.all(Radius.circular(8)),
                        ),
                      if (requiretime)
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),
                          child: SizedBox(
                            height: 15,
                            child: VerticalDivider(
                              color: Colors.grey[600],
                              width: 2,
                              thickness: 1.5,
                            ),
                          ),
                        ),
                      if (requiretime) const TracktimeItem(),
                    ],
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}

Route _createroute(Widget child) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1, 0);
      const end = Offset.zero;
      const curve = Curves.decelerate;
      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}
