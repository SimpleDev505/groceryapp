import 'package:flutter/material.dart';

class TracktimeItem extends StatefulWidget {
  const TracktimeItem(
      {super.key,
      this.timeamount = "Null-time",
      this.timeitemcolor = Colors.black,
      this.timeitemfontwieght = FontWeight.bold,
      this.timeitemfontsize = 15});

  final String timeamount;
  final Color? timeitemcolor;
  final FontWeight? timeitemfontwieght;
  final double timeitemfontsize;

  @override
  State<TracktimeItem> createState() => _TracktimeItemState();
}

class _TracktimeItemState extends State<TracktimeItem> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "NULL-time",
      style: TextStyle(),
    );
  }
}
