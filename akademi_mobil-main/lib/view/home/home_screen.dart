import 'dart:async';
import 'package:akademi_mobil/bottom_navbar.dart';
import 'package:akademi_mobil/constants/color.dart';
import 'package:akademi_mobil/view/form/form_screen.dart';
import 'package:akademi_mobil/view/home/haber_detay_screen.dart';
import 'package:akademi_mobil/view/profile/profile_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../constants/haber_duyuru_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

var showAlert = false;

class _HomePageState extends State<HomePage> {
  double startDegreeOffset = 180;
  int isSelected = 0;
  List egitimList = ["Teknik", "Coursera", "Girişimcilik", "İngilizce"];
  int haberDuyuru = 0;
  List<double> bitirmeYuzdesiList = [68, 46, 32, 93];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadImage();
    showAlert == false
        ? WidgetsBinding.instance
            .addPostFrameCallback((_) => showRatingDialog(context))
        : null;
    showAlert = true;
  }

  void showRatingDialog(BuildContext context) {
    double rating = 3;
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Bu Hafta Akademide Kendinizi Nasıl Hissediyorsunuz :)"),
          content: RatingBar.builder(
            initialRating: 3,
            itemCount: 5,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return Icon(
                    Icons.sentiment_very_dissatisfied,
                    color: Colors.red,
                  );
                case 1:
                  return Icon(
                    Icons.sentiment_dissatisfied,
                    color: Colors.redAccent,
                  );
                case 2:
                  return Icon(
                    Icons.sentiment_neutral,
                    color: Colors.amber,
                  );
                case 3:
                  return Icon(
                    Icons.sentiment_satisfied,
                    color: Colors.lightGreen,
                  );
                case 4:
                  return Icon(
                    Icons.sentiment_very_satisfied,
                    color: Colors.green,
                  );
                default:
                  return Container();
              }
            },
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          actions: [
            TextButton(
              child: Text("Gönder"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(ProfilePage());
              },
              icon: const Icon(Icons.person))
        ],
        backgroundColor: kAppBarColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 60,
                  child: ListView.builder(
                      itemCount: egitimList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = index;
                            });
                          },
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 2.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isSelected == index
                                        ? yesil
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      egitimList[index],
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: isSelected == index
                                              ? Colors.white
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 8),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Expanded(child: buildGraph()),
                      Expanded(
                          child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Nisan",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "${egitimList[isSelected]} Eğitimi Tamamlama Oranı",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Spacer(),
                          Card(
                            color: Colors.greenAccent,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(color: kirmizi, width: 2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Son Gün: 30 Nisan"),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          )
                        ],
                      ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            haberDuyuru = 0;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: haberDuyuru == 0
                                ? Colors.greenAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Haberler",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            haberDuyuru = 1;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                          decoration: BoxDecoration(
                            color: haberDuyuru == 1
                                ? Colors.greenAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            "Duyurular",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                haberDuyuru == 0 ? buildHaberler(0) : buildDuyurular(0),
                haberDuyuru == 0 ? buildHaberler(1) : buildDuyurular(1),
                haberDuyuru == 0 ? buildHaberler(2) : buildDuyurular(2),
                haberDuyuru == 0 ? buildHaberler(3) : buildDuyurular(3),
                haberDuyuru == 0 ? buildHaberler(4) : buildDuyurular(4),
                haberDuyuru == 0 ? buildHaberler(5) : buildDuyurular(5),
                haberDuyuru == 0 ? buildHaberler(6) : buildDuyurular(6),
                haberDuyuru == 0 ? buildHaberler(7) : buildDuyurular(7),
                haberDuyuru == 0 ? buildHaberler(8) : buildDuyurular(8),
                haberDuyuru == 0 ? buildHaberler(9) : buildDuyurular(9),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildHaberler(int index) {
    return GestureDetector(
      onTap: () {
        Get.to(HaberDetayPage(index: index));
      },
      child: Container(
        height: 200,
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
                color: index % 4 == 0
                    ? kirmizi
                    : index % 4 == 1
                        ? yesil
                        : index % 4 == 2
                            ? sari
                            : mavi,
                width: 2),
          ),
          child: Row(
            children: [
              _isLoading == true
                  ? Image.asset(
                      "assets/haber/haber${(index + 1).toString()}.jpg",
                      height: 150,
                      width: 150,
                    )
                  : Container(
                      height: 150,
                      width: 150,
                      child: Padding(
                        padding: const EdgeInsets.all(45.0),
                        child: CircularProgressIndicator(
                          strokeWidth: 10,
                          color: index % 4 == 0
                              ? kirmizi
                              : index % 4 == 1
                                  ? yesil
                                  : index % 4 == 2
                                      ? sari
                                      : mavi,
                        ),
                      ),
                    ),
              SizedBox(
                width: 10,
              ),
              Flexible(
                  child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  haberList[index].aciklama,
                  textAlign: TextAlign.justify,
                ),
              )),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _loadImage() async {
    await Future.delayed(Duration(milliseconds: 1300)).then((value) => () {});
    setState(() {
      _isLoading = true;
    });
  }

  buildDuyurular(int index) {
    return GestureDetector(
      onTap: () {
        bottomNavIndex.value = 3;
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 150,
          color: index % 4 == 0
              ? kirmizi
              : index % 4 == 1
                  ? yesil
                  : index % 4 == 2
                      ? sari
                      : mavi,
          child: Card(
            elevation: 4.0,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/megafon.png", height: 100),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                    child: Text(
                  duyuruList[index].baslik,
                  textAlign: TextAlign.center,
                )),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final Duration _animationDuration = const Duration(milliseconds: 500);

  PieChart buildGraph() {
    return PieChart(
      swapAnimationDuration: _animationDuration,
      PieChartData(
        sections: [
          PieChartSectionData(
            value: (100 - bitirmeYuzdesiList[isSelected]),
            title: (100 - bitirmeYuzdesiList[isSelected]).toString(),
            color: kirmizi,
          ),
          PieChartSectionData(
            value: bitirmeYuzdesiList[isSelected],
            title: bitirmeYuzdesiList[isSelected].toString(),
            color: yesil,
          ),
        ],
        sectionsSpace: 2,
        centerSpaceRadius: 32,
        startDegreeOffset: 180,
      ),
    );
  }

/*
  AspectRatio buildGraph() {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        swapAnimationDuration: Duration(milliseconds: 5000),
        PieChartData(
          sections: [
            PieChartSectionData(
              value: 25,
              title: '25%',
              color: Colors.red,
            ),
            PieChartSectionData(
              value: 75,
              title: '75%',
              color: Colors.green,
            ),
          ],
          sectionsSpace: 2,
          centerSpaceRadius: 32,
          startDegreeOffset: 180,
        ),
      ),
    );
  }*/
}
