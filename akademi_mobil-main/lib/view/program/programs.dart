
import 'package:flutter/material.dart';

import 'add_program.dart';
import 'programIcerik.dart';



class Programs extends StatefulWidget {



  const Programs({Key? key}) : super(key: key);

  @override
  State<Programs> createState() => _ProgramseState();



}

class _ProgramseState extends State<Programs> {

  List<ProgramIcerik> birinciProgram=[
    ProgramIcerik(
        gun: "Pazartesi",
        baslangic: "18:00",
        bitis: "20:00",
        ders: "Flutter"
    ),ProgramIcerik(
        gun: "Pazartesi",
        baslangic: "20:00",
        bitis: "22:00",
        ders:"İngilizce"
    ),
    ProgramIcerik(
        gun: "Salı",
        baslangic: "18:00",
        bitis: "20:00",
        ders: "Proje Yönetimi"
    ),
    ProgramIcerik(
        gun: "Salı",
        baslangic: "20:00",
        bitis: "21:00",
        ders: "Flutter"
    ),
    ProgramIcerik(
        gun: "Çarşamba",
        baslangic: "18:00",
        bitis: "20:00",
        ders: "Flutter"
    ),ProgramIcerik(
        gun: "Çarşamba",
        baslangic: "20:00",
        bitis: "22:00",
        ders: "İngilizce"
    ),
    ProgramIcerik(
        gun: "Perşembe",
        baslangic: "18:00",
        bitis: "20:00",
        ders: "Proje Yönetimi"
    ),
    ProgramIcerik(
        gun: "Perşembe",
        baslangic: "20:00",
        bitis: "21:00",
        ders: "Flutter"
    ),ProgramIcerik(
        gun: "Cuma",
        baslangic: "18:00",
        bitis: "20:00",
        ders: "Proje Yönetimi"
    ),
    ProgramIcerik(
        gun: "Cuma",
        baslangic: "20:00",
        bitis: "21:00",
        ders: "Flutter"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Programlar"),
      ),


      body: new Container(

          child:  DataTable(
              columnSpacing: 30.0,
              columns: [
                DataColumn(
                  label: Text('Gün'),
                ),
                DataColumn(
                  label: Text('Başlangıç'),
                ),
                DataColumn(
                  label: Text('Bitiş'),
                ),
                DataColumn(
                  label: Text('Ders'),
                ),
              ],


              rows:[

                for(var program in birinciProgram)

                  DataRow(cells:
                  [  DataCell(Text(program.gun)),

                    DataCell(Text(program.baslangic)),

                    DataCell(Text(program.bitis)),

                    DataCell(Text(program.ders)),
                  ]),

              ])
      ),
    );
  }
}
