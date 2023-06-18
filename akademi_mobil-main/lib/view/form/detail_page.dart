import 'package:akademi_mobil/view/form/Text_Learn.dart';
import 'package:akademi_mobil/view/form/form_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'Dimensions.dart';

List<String> list = <String>['Ankara', 'İzmir', 'İstanbul', 'Aydın'];

class Detail_Page extends StatefulWidget {
  const Detail_Page({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  State<Detail_Page> createState() => _Detail_PageState();
}

class _Detail_PageState extends State<Detail_Page> {
  String dropdownValue = list.first;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return Colors.red;
  }

  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  List<dynamic> formInputs = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "-",
    "",
    "",
    "",
    ""
  ];
  List formlabels = ["Ad:", "Soyad:", "Mail:", "Önceden aldığın sertifikalar:"];
  List<IconData> iconTypes = [
    Icons.person,
    Icons.person,
    Icons.mail,
    Icons.add_business
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.blue,
          expandedHeight: Dimensions.expandedheight1,
          toolbarHeight: Dimensions.toolbarheight1,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Form Bilgisi",
              style: TitleTextStyle(),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return buildInput(index, context);
            },
            childCount: 4,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.padding16),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Kadın"),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text("Erkek"),
                  Checkbox(
                    checkColor: Colors.white,
                    fillColor: MaterialStateProperty.resolveWith(getColor),
                    value: isChecked2,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked2 = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
              padding: EdgeInsets.all(Dimensions.padding16),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 20,
                style: const TextStyle(color: Colors.black54),
                underline: Container(
                  height: 2,
                  color: Colors.red,
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(Dimensions.padding16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Katılacağım"),
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked3,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked3 = value!;
                        });
                      },
                    ),
                    Text("Katılmayacağım"),
                    Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.resolveWith(getColor),
                      value: isChecked4,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked4 = value!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimensions.height20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar("Form İşlemi", "Form Kaydediliyor...",
                        icon: Icon(Icons.done, color: Colors.green),
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(seconds: 3));

                    formList[widget.index] = true;

                    Navigator.pop(context);
                  },
                  child: Text(
                    "Kaydet",
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }

  Widget buildInput(
    int index,
    BuildContext context, {
    TextInputType textInputType = TextInputType.text,
  }) {
    return Padding(
      padding: EdgeInsets.all(Dimensions.padding16),
      child: TextFormField(
        keyboardType: textInputType,
        onSaved: (newValue) => formInputs[index] = newValue!,
        onChanged: (value) {
          return null;
        },
        validator: (value) {
          return null;
        },
        decoration: buildInputDecoration(formlabels[index], iconTypes[index]),
      ),
    );
  }

  InputDecoration buildInputDecoration(String text, IconData Icon1) {
    return InputDecoration(
      prefixIcon: Icon(Icon1),
      focusColor: Colors.green,
      hoverColor: Colors.green,
      labelStyle: TextStyle(color: Colors.black26),

      ///labelText: text ,
      labelText: text,
      filled: true,

      ///hintText: text,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: Colors.green),
        borderRadius: BorderRadius.circular(Dimensions.rectangle15),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: Colors.redAccent,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: Dimensions.width20, color: Colors.redAccent),
      ),
    );
  }
}
