import 'package:akademi_mobil/constants/color.dart';
import 'package:flutter/material.dart';
import 'Dimensions.dart';
import 'Text_Learn.dart';
/*SliverAppBar buildSliverAppBar() {
  final String titletext;
  return SliverAppBar(
    backgroundColor: Colors.transparent,
    pinned: true,
    expandedHeight: Dimensions.expandedheight1,
    toolbarHeight:Dimensions.toolbarheight1,
    flexibleSpace: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(Dimensions.rectangle20),bottomLeft: Radius.circular(Dimensions.rectangle20)),
        gradient: const LinearGradient(
          // colors for gradient
          colors: [
            Colors.red, Colors.blue,Colors.green,  Colors.yellow,
          ],
        ),
      ),
      child: FlexibleSpaceBar(
        centerTitle: true,
        title: Text( titletext,style: TitleTextStyle() ,),
      ),
    ),
    ///title: Text("$titletext",style: TitleTextStyle(),),
    ///centerTitle: true,
  );
}*/
class buildSliverAppBar extends StatefulWidget {
  const buildSliverAppBar({Key? key, required this.titletext}) : super(key: key);
  final String titletext;
  @override
  State<buildSliverAppBar> createState() => _buildSliverAppBarState();
}

class _buildSliverAppBarState extends State<buildSliverAppBar> {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: yesil,
      pinned: true,
      expandedHeight: Dimensions.expandedheight1,
      toolbarHeight:Dimensions.toolbarheight1,
      title: Text("Formlar",),
      ///title: Text("$titletext",style: TitleTextStyle(),),
      ///centerTitle: true,
    );
  }
}

