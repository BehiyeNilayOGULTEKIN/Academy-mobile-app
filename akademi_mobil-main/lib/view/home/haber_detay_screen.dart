import 'package:akademi_mobil/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/haber_duyuru_list.dart';

class HaberDetayPage extends StatefulWidget {
  const HaberDetayPage({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<HaberDetayPage> createState() => _HaberDetayPageState();
}

class _HaberDetayPageState extends State<HaberDetayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: yesil,
        title: Text(haberList[widget.index].baslik),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
                "assets/haber/haber${(widget.index + 1).toString()}.jpg"),
          ),
          Flexible(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              haberList[widget.index].aciklama,
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          )),
        ],
      ),
    );
  }
}
