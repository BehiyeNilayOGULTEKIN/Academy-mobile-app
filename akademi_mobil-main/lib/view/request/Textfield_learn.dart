import 'package:flutter/material.dart';

class TextField_Learn{
  List<dynamic> formInputs = [
    "",
  ];
  Container buildInput(
      {TextInputType textInputType = TextInputType.text,
        required String title,required int lines, required bool unvisibility,
        required int index}) {
    return Container(
      width: double.maxFinite,
      child: TextFormField(
        obscureText: unvisibility,
        maxLines: lines,
        keyboardType: textInputType,
        onSaved: (newValue) => formInputs[index] = newValue!,
        onChanged: (value) {
          return null;
        },
        validator: (value) {
          return null;
        },
        decoration: buildInputDecoration("$title"),
      ),
    );
  }

  InputDecoration buildInputDecoration(String text) {
    return InputDecoration(
      focusColor: Colors.green,
      hoverColor: Colors.green,
      label: Text(text,style: const TextStyle(color: Colors.black),),
      floatingLabelBehavior: FloatingLabelBehavior.always,
      focusedBorder: OutlineInputBorder(
        borderSide:  const BorderSide(width: 3, color: Colors.green),
        borderRadius: BorderRadius.circular(15),
      ),
      border: const OutlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: Colors.redAccent,
        ),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 3, color: Colors.redAccent),
      ),
    );
  }
}