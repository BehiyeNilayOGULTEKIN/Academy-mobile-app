import 'package:akademi_mobil/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../form/Dimensions.dart';
import 'Textfield_learn.dart';
class Mazeretler extends StatefulWidget {
  const Mazeretler({Key? key}) : super(key: key);

  @override
  State<Mazeretler> createState() => _MazeretlerState();
}

class _MazeretlerState extends State<Mazeretler> {

  static const iconTypes = <IconData>[
   Icons.file_present,
    Icons.link,
    Icons.keyboard_voice,
    Icons.picture_as_pdf,
  ];
  static const colortypes=<Color>[
    Colors.blue,
    Colors.red,
    Colors.yellow,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 60,
            backgroundColor:Colors.green ,
            title: Padding(
              padding: EdgeInsets.only(left: Dimensions.padding8),
              child: Text("Mazeretler",),
            ),
          ),
          SliverToBoxAdapter(
            child: Form(
              child: Padding(
                padding: EdgeInsets.all(Dimensions.padding16),
                child: Column(
                  children: [
                    TextField_Learn().buildInput(title: "Mazeretler", index: 0, lines: 10, unvisibility: false),
                    SizedBox(height: Dimensions.padding16,),
                    Card(
                      elevation: 20,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(onPressed:  () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          elevation: 16,
                          title: const Text('Fotoğraf Seç'),
                          content:  Row(
                            children: [
                             TextButton(child:Container(
                               width:50,
                               height:50,
                               decoration: const BoxDecoration(
                                 image: DecorationImage(
                                   fit:BoxFit.cover,
                                   image: NetworkImage("https://pbs.twimg.com/profile_images/1438096529185779715/nnw1HiOv_400x400.png"),
                                 )
                               ),
                             ) ,onPressed: () {

                             },),
                              const SizedBox(height: 10,),
                              TextButton(child:Container(
                                width:50,
                                height:50,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit:BoxFit.cover,
                                      image: NetworkImage("https://siyahekran.net/blog/wp-content/uploads/2022/10/siyah-ekran-1.jpg"),
                                    )
                                ),
                              ) ,onPressed: () {

                              },),
                            ],
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                            Navigator.pop(context, 'Seç');
                            Get.snackbar(
                              "Dosya yüklemesi",
                              "Dosya yükleniyor...",
                              icon: Icon(Icons.upload, color: Colors.black),
                              snackPosition: SnackPosition.BOTTOM,
                              duration: Duration(seconds: 3),
                            );
                            },
                              child: const Text("Seç"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'OK');
                              },
                              child: const Text('Geri'),
                            ),
                          ],
                        ),
                      ),
                                icon: Icon(iconTypes[0],color: colortypes[0],),
                            ),
                            IconButton(onPressed: () {},
                              icon: Icon(iconTypes[1],color: colortypes[1],),
                            ), IconButton(onPressed: () {},
                              icon: Icon(iconTypes[2],color: colortypes[2],),
                            ), IconButton(onPressed:  () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  elevation: 16,
                  title: const Text('Fotoğraf Seç'),
                  content:  Row(
                    children: [
                      TextButton(child:Container(
                        width:50,
                        height:50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit:BoxFit.cover,
                              image: NetworkImage("https://pbs.twimg.com/profile_images/1438096529185779715/nnw1HiOv_400x400.png"),
                            )
                        ),
                      ) ,onPressed: () {

                      },),
                      const SizedBox(height: 10,),
                      TextButton(child:Container(
                        width:50,
                        height:50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit:BoxFit.cover,
                              image: NetworkImage("https://siyahekran.net/blog/wp-content/uploads/2022/10/siyah-ekran-1.jpg"),
                            )
                        ),
                      ) ,onPressed: () {

                      },),
                    ],
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'Seç');
                        Get.snackbar(
                          "Dosya yüklemesi",
                          "Dosya yükleniyor...",
                          icon: Icon(Icons.upload, color: Colors.black),
                          snackPosition: SnackPosition.BOTTOM,
                          duration: Duration(seconds: 3),
                        );
                      },
                      child: const Text("Seç"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'OK');
                      },
                      child: const Text('Geri'),
                    ),
                  ],
                ),
              ),
                              icon: Icon(iconTypes[3],color: colortypes[3],),
                            ),
                            TextButton(onPressed: () {

                            }, child: const Text(
                              "Dosya yükle"
                            ),),
                          ],
                        )
                      ),
                    ),
                    SizedBox(height: Dimensions.width40,),
                    ElevatedButton(onPressed: () async {
                     /// Navigator.pop(context,HomePage());
                      Get.snackbar(
                        "Belge Gönderimi",
                        "Mazeret göderiliyor...",
                        icon: Icon(Icons.send, color: Colors.black),
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(milliseconds: 1500),
                      );
                      Get.snackbar(
                          "Mazeret Bildirgesi",
                          "Mazeret gönderildi",
                          icon: Icon(Icons.done, color: Colors.black),
                          snackPosition: SnackPosition.TOP,
                          duration: Duration(seconds: 2)

                      );
                      await Future.delayed(Duration(milliseconds: 1500));
                      Navigator.pop(context);
                    }, child: Text(
                      "Kaydet ve Gönder"
                    )
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}



