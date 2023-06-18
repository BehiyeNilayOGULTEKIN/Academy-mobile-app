
import 'package:akademi_mobil/view/program/programIcerik.dart';
import 'package:akademi_mobil/view/program/program_screen.dart';
import 'package:akademi_mobil/view/program/programs.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';



List<ProgramIcerik> _icerik=[];

class AddProgram extends StatefulWidget {

  const AddProgram({Key? key}) : super(key: key);

  @override
  State<AddProgram> createState() =>_AddProgram();


}

class _AddProgram extends State<AddProgram> {
  late  String gun;
  late  String baslangic;
  late  String bitis;
  late  String ders;

  ProgramIcerik icerik=ProgramIcerik(baslangic: "baslangic", bitis: "bitis", ders: "ders", gun: "gun");
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Program Ekle"),
        backgroundColor: yesil,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _form()
            ],
          ),
        ),
      ),
    );
  }
   _form() => Container(
     color:Colors.white,
     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
     child: Form(
       key: _formKey,
       child: Column(
         children: <Widget>[
           TextFormField(decoration: InputDecoration(labelText: "Program Adı")),
          TextFormField(decoration: InputDecoration(labelText: "Gün giriniz")
            ,onSaved: (val)=> setState(()=>icerik.gun=val!)),
           TextFormField(decoration: InputDecoration(labelText: "Başlangıç saati giriniz XX:XX")
             ,onSaved: (val)=> setState(()=>icerik.baslangic=val!),
             validator: (val)=>(val?.length==0 ?"bu alanı boş bırakamasınız":null),),
           TextFormField(decoration: InputDecoration(labelText: "Bitiş saati giriniz XX:XX")
             ,onSaved: (val)=> setState(()=>icerik.bitis=val!),
             validator: (val)=>(val?.length==0 ?"bu alanı boş bırakamasınız":null),),
           TextFormField(decoration: InputDecoration(labelText: "Ders adı giriniz")
             ,onSaved: (val)=> setState(()=>icerik.ders=val!),
             validator: (val)=>(val?.length==0 ?"bu alanı boş bırakamasınız":null),),

           Container(
             margin: EdgeInsets.all(10.0),
             child: FloatingActionButton(onPressed: ()=>_onSubmit(),child: Text("Onayla"),backgroundColor: yesil,


             ),
           )
         ],
       ),
     ),
   );

   _onSubmit() {
     var form=_formKey.currentState;
     if(form!.validate()){
       form.save();
setState(() {
      _icerik.add(icerik);
});
       Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => ProgramPage()));
form.reset();


     }

   }


}




