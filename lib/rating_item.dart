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
      this.ratingitemiconcolor = Colors.black,
      this.ratingitemicon = Icons.star_rate,
      this.ratingitemiconsize = 20,
      this.ratingitemfontwieght = FontWeight.bold,
      this.ratingitemfontsize = 16,
      this.ratingitempaddingfont = 2});

  final double ratingitemwidth;
  final double ratingitemheight;
  final Color? ratingitembgcolor;
  final BorderRadiusGeometry? ratingitemborderradius;

  final String ratingamount;
  final Color? ratingitemcolor;
  final FontWeight? ratingitemfontwieght;
  final double ratingitemfontsize;
  final double ratingitempaddingfont;

  final Color? ratingitemiconcolor;
  final IconData? ratingitemicon;
  final double ratingitemiconsize;

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
                widget.ratingitemicon,
                color: widget.ratingitemiconcolor,
                size: widget.ratingitemiconsize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: widget.ratingitempaddingfont),
              child: Text(
                widget.ratingamount,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: widget.ratingitemcolor,
                    fontWeight: widget.ratingitemfontwieght,
                    fontSize: widget.ratingitemfontsize),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
