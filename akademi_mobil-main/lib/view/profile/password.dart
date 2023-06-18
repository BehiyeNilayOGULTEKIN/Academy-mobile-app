import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../form/Dimensions.dart';
import '../request/Textfield_learn.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  List formLabels=["Eski Şifre:","Yeni Şifre","Yeni Şifre Tekrar:"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Padding(
            padding:  EdgeInsets.only(left: Dimensions.padding16),
            child: Text("Şifre Değiştirme"),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(Dimensions.padding16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(Dimensions.padding16),
                child: TextField_Learn().buildInput(title: formLabels[0], index: 0,lines: 1,unvisibility: true),
              ),
              SizedBox(height: Dimensions.padding16,),
              Padding(
                padding:  EdgeInsets.all(Dimensions.padding16),
                child: TextField_Learn().buildInput(title: formLabels[1], index: 1,lines: 1,unvisibility: true),
              ),
              SizedBox(height: Dimensions.padding16,),
              Padding(
                padding: EdgeInsets.all(Dimensions.padding16),
                child: TextField_Learn().buildInput(title: formLabels[2], index: 2,lines: 1,unvisibility: true),
              ),
              SizedBox(height: Dimensions.padding16,),
              ElevatedButton(onPressed: () {
                Get.snackbar(
                  "Yeni Şifre Talebi",
                  "Şifreniz Kaydedildi",
                  icon: Icon(Icons.done, color: Colors.green),
                  snackPosition: SnackPosition.BOTTOM,

                );
              }, child: Text("Kaydet"),style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
                elevation: MaterialStateProperty.all(20),
              ),)
            ],
          ),
        )
    );
  }
}
