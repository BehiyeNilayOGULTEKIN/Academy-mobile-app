import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../form/Dimensions.dart';
import 'Textfield_learn.dart';

class OneriPage extends StatefulWidget {
  const OneriPage({Key? key}) : super(key: key);

  @override
  State<OneriPage> createState() => _OneriPageState();
}

class _OneriPageState extends State<OneriPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Önerilerim"),
        ),
        body: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: EdgeInsets.all(Dimensions.padding16),
              child: Column(
                children: [
                  TextField_Learn().buildInput(
                      title: "Öneri Bildirgesi",
                      index: 0,
                      lines: 10,
                      unvisibility: false),
                  SizedBox(
                    height: Dimensions.padding16,
                  ),
                  ElevatedButton(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Kaydedildi'),
                        content: const Text('Önerin için teşekkürler :)'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context, 'Tamam');
                              Get.snackbar("Öneri Bildirgesi",
                                  "Öneriniz gönderiliyor...",
                                  icon: Icon(Icons.send, color: Colors.black),
                                  snackPosition: SnackPosition.BOTTOM,
                                  duration: Duration(seconds: 3));

                              Get.snackbar(
                                  "Öneri Bildirgesi", "Öneriniz gönderildi",
                                  icon: Icon(Icons.done, color: Colors.black),
                                  snackPosition: SnackPosition.TOP,
                                  duration: Duration(seconds: 3));
                            },
                            child: const Text('Tamam'),
                          ),
                        ],
                      ),
                    ),
                    child: Text("Kaydet ve Gönder",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(20),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

/*onSubmitted: (String value) async {
          await showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Kaydedildi'),
                content: Text(
                    'Önerin için teşekkürler :)'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Tamam'),
                  ),
                ],
              );
            },
          );
        },*/
