import 'package:akademi_mobil/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottom_navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get passwordController => null;
  final _text = TextEditingController();
  final _text2 = TextEditingController();
  bool _validate = false;
  bool _isObscure = true;


  @override
  void dispose() {
    _text.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        SizedBox(height: 65),
        Container(
          height: 120,
          child: Image.asset("assets/sign-up.png"),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text(
              'Google Oyun ve Uygulama Akademisi',
              style: TextStyle(
                  color: Color(0xff418cf5),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        SizedBox(height: 25),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: const Text('Giriş Yap',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ))),
        Container(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _text,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'E posta',
              errorText: _validate ? 'E-posta boş olamaz' : null,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            controller: _text2,
            obscureText: _isObscure ? true : false ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Şifre',
              errorText: _validate ? 'Şifre boş olamaz' : null,
              suffixIcon: IconButton(
                icon: Icon(
                  _isObscure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
            height: 50,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      yesil), // Here Im having the error
                ),
                child: const Text(
                  'Giriş',
                ),
                onPressed: () {
                  setState(() {
                    _text.text.isEmpty ? _validate = true : _validate = false;
                    _text2.text.isEmpty ? _validate = true : _validate = false;
                  });

                  if (_text.text.isEmpty != true &&
                      _text2.text.isEmpty != true) {
                    Get.offAll(BottomNavBarPage());
                  }
                })),
        Row(
          children: <Widget>[
            const Text('Hesabın yok mu?'),
            TextButton(
              child: const Text(
                'Kaydol',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                //signup screen
              },
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ]),
    );
  }
}
