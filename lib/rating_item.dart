import 'package:flutter/material.dart';

class RatingItem extends StatefulWidget {
  const RatingItem(
      {super.key,
      this.ratingitemwidth = 50,
      this.ratingitemheight = 25,
      this.ratingitembgcolor,
      this.ratingitemborderradius,
      this.ratingamount = "null",
      this.ratingitemcolor = Colors.black,
      this.ratingitemiconcolor = Colors.black});

  final double ratingitemwidth;
  final double ratingitemheight;
  final Color? ratingitembgcolor;
  final BorderRadiusGeometry? ratingitemborderradius;
  final String ratingamount;
  final Color? ratingitemcolor;
  final Color? ratingitemiconcolor;

  @override
  State<RatingItem> createState() => _RatingItemState();
}

class _RatingItemState extends State<RatingItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.ratingitemheight,
      width: widget.ratingitemwidth,
      decoration: BoxDecoration(
        color: widget.ratingitembgcolor,
        borderRadius: widget.ratingitemborderradius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Align(
              alignment: Alignment.center,
              child: Icon(
                Icons.star_rate,
                color: widget.ratingitemiconcolor,
                size: 20,
              ),
            ),
            Text(
              widget.ratingamount,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: widget.ratingitemcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
