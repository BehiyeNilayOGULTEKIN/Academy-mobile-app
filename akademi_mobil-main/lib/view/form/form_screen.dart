import 'dart:async';

import 'package:akademi_mobil/view/form/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'Dimensions.dart';
import 'Sliver_app_bar.dart';
import 'Text_Learn.dart';
class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}
List formList=[false,false,false,false,false,false,false,false,false,false,].obs;

class _FormPageState extends State<FormPage> {
  bool _isLoading = false;

  List formName=["Akademi Başvuru","Ideathon","APP Jam","Game Jam","Etkinlik Başvuru 1","Etkinlik Başvuru 2","Bootcamp Başvuru","Alan Başvuru","İngilizce Ders","Hediye Başvuru"];
  var titletext="FORMLAR";
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
          child: _isLoading ? Center(
            child: Container(
              ///width:500 ,
              ///height: 70,
              child: Padding(
                padding: EdgeInsets.only(right:Dimensions.padding16 ),
                child: LoadingIndicator(
                    indicatorType: Indicator.pacman, /// Required, The loading type of the widget
                    colors: [Colors.blue,Colors.red,Colors.yellow],       /// Optional, The color collections
                    strokeWidth: 1,                     /// Optional, The stroke of the line, only applicable to widget which contains line
                    backgroundColor: Colors.white,      /// Optional, Background of the widget/// Optional, the stroke backgroundColor
                ),
              ),
            ),
          ):
          CustomScrollView(
           slivers: [
             buildSliverAppBar(titletext: "FORMLAR",),
             SliverList(
               delegate: SliverChildBuilderDelegate(
                     (BuildContext context, int index) {
                   return buildForm(index,context);
                 },
                 childCount: 10,
               ),
             ),
           ],
     ),
        ),
        backgroundColor:Colors.white,
      );
  }


  Padding buildForm(int index,BuildContext context) {
    return Padding(
                 padding:  EdgeInsets.all(Dimensions.padding8),
                 child: SizedBox(
                   width: double.maxFinite,
                   child:TextButton(
                     onPressed: () {
                       Get.to(Detail_Page(index: index));
                       setState(() {
                         formList[index] = true;
                       });
                     },
                     child: Card(
                       color: Colors.white,
                       elevation: Dimensions.elevation10,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.rectangle15)),
                       child: Padding(
                         padding:  EdgeInsets.all(Dimensions.padding16),
                         child:Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding:  EdgeInsets.only(left: Dimensions.padding8,bottom: Dimensions.padding16),
                               child: Text("${formName[index]}",style: TextStyle(
                                 fontSize: Dimensions.font20,
                                 color: Colors.black87,
                                 fontWeight: FontWeight.w900,
                               ),),
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: <Widget>[
                               Container(
                                 width: Dimensions.width100,
                                 height: Dimensions.height100,
                                 decoration: const BoxDecoration(
                                   image: DecorationImage(
                                     fit:   BoxFit.cover,
                                     image: NetworkImage("https://scontent.cdninstagram.com/v/t51.2885-15/334183932_1278404979739858_177589311238080899_n.jpg?stp=dst-jpg_e35&_nc_ht=scontent.cdninstagram.com&_nc_cat=110&_nc_ohc=L_Qtq_CkDm0AX8saEhj&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzA1MzIxMjM3ODY4MTQ0Mzc1OA%3D%3D.2-ccb7-5&oh=00_AfDtyCgFbV8jtYI_H2-5YSvBxWWxxHSv4FnReIoMRmrhOg&oe=6434A85A&_nc_sid=978cb9"),
                                   )
                                 ),
                               ),
                                 SizedBox(width: Dimensions.width20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children:  [
                                   SizedBox(height: Dimensions.width5,),
                                   Text("02.02.2022",style: buildTextStyle2(),),
                                   SizedBox(height: Dimensions.width5,),
                                   Text("Anketin konusu",style: buildTextStyle2(),),
                                 ],
                                ),
                                 SizedBox(width:Dimensions.padding16),
                                 ElevatedButton(
                                     onPressed: () => setState(() {
                                       formList[index]=true;
                                     }),
                                     child: const Text("Tamamlandı",),style: ButtonStyle(
                                   backgroundColor: MaterialStateProperty.all( formList[index] ? Colors.green:Colors.red,),
                                 ),),
                               ],
                             ),
                           ],
                         ),
                       ),
                     ),
                   )
                 ),
               );
  }
}
