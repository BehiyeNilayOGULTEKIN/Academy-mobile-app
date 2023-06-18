import 'package:akademi_mobil/constants/color.dart';
import 'package:akademi_mobil/view/request/mazeretler.dart';
import 'package:akademi_mobil/view/request/oneri.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RequestPage extends StatefulWidget {
  const RequestPage({Key? key}) : super(key: key);

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: Text("Talep ve İşlemlerim"),
      ),
      body: ListView(
        ///todo: talepler ekranı - akademi ekbiyle iletişim vb.
        children: [
          GestureDetector(
            onTap: () {
              Get.to(Mazeretler());
            },
            child: buildContainer(
              Icons.edit_note,
              "Mazeret İşlemi",
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {},
            child: buildContainer(
              Icons.contact_support,
              "Destek Talep",
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              Get.to(OneriPage());
            },
            child: buildContainer(
              Icons.comment,
              "Öneri",
            ),
          ),
          SizedBox(height: 5),
          GestureDetector(
            onTap: () {},
            child: buildContainer(
              Icons.pending_actions,
              "Değerlendirme",
            ),
          ),
          //SizedBox(height: 5),
          //buildContainer(
          //Icons.forward_to_inbox_outlined,
          //"Gelen Kutusu",
          //),
          SizedBox(height: 5),
          Card(
            elevation: 4.0,
            child: Row(
              children: [
                Icon(
                  Icons.forward_to_inbox_sharp,
                  size: 32,
                  color: Colors.black,
                ),
                SizedBox(height: 50, width: 20),
                Row(
                  children: [
                    Text(
                      "Gelen Kutusu",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 175),
                    Icon(
                      Icons.plus_one_sharp,
                      color: kirmizi,
                      weight: 70,
                    ),
                  ],
                )
              ],
            ),
          ),

          SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              Image.network(
                "https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/google-logo.png",
                width: 170,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              Image.network(
                "https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/girisim.png",
                width: 150,
              ),
              SizedBox(width: 50),
              Image.network(
                "https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/girvak-logo.png",
                width: 150,
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 10),
              Image.network(
                "https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/logo-2.png",
                width: 170,
              ),
              SizedBox(width: 50),
              Image.network(
                "https://oyunveuygulamaakademisi.com/assets/site/oua/assets/sites/images/about-us-images/tc-logo.png",
                width: 170,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container buildContainer(
    IconData icon,
    String text,
  ) {
    return Container(
      height: Get.height * 0.09,
      child: Card(
        elevation: 3.0,
        child: Row(
          children: [
            Icon(
              icon,
              size: 32,
              color: Colors.black,
            ),
            SizedBox(height: 20, width: 20),
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
