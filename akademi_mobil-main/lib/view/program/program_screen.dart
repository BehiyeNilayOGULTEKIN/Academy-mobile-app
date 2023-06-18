import 'package:akademi_mobil/view/program/programs.dart';
import 'package:flutter/material.dart';

import '../../constants/color.dart';
import 'add_program.dart';
import 'programIcerik.dart';
import 'programs.dart';

class ProgramPage extends StatefulWidget {
  AddProgram addProgram = AddProgram();
  List<ProgramIcerik> icerik = [];

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {
  bool _isShow = true;
  bool _isShow2 = true;
  bool _isShow3 = true;
  bool _isShow4 = true;
  bool _isShow5 = true;
  bool _isShow6 = true;
  bool _isShow7 = true;
  bool _isShow8 = true;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Programlar"),
          backgroundColor: yesil,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: yesil,
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddProgram()),
            );
          },
        ),
        body: Column(
          children: [
            Visibility(
              visible: _isShow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     1"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow = !_isShow;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     2"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow2 = !_isShow2;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     3"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow3 = !_isShow3;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     4"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow4 = !_isShow4;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     5"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow5 = !_isShow5;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     6"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow6 = !_isShow6;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     7"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow7 = !_isShow7;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            ),
            Visibility(
              visible: _isShow8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Program     8"),
                  SizedBox(width: 10),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Programs()));
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.green),
                      child: const Text("Git!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.delete),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.red),
                      onPressed: () {
                        showAlertDialog(context);
                        setState(
                              () {
                            _isShow8 = !_isShow8;
                          },
                        );
                      },
                      label: Text(" Sil!")),
                  SizedBox(width: 10),
                  ElevatedButton.icon(
                      icon: Icon(Icons.update),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0) ,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          primary: Colors.blue),
                      onPressed: () {},
                      label: Text(" Güncelle!")),
                ],
              ),
            )
          ],
        ));
  }
  showAlertDialog(BuildContext context) {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { Navigator.of(context).pop();},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(""),
      content: Text("Program silindi."),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
