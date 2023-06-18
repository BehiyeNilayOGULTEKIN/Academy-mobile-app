import 'package:akademi_mobil/view/login/login.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../form/Dimensions.dart';
import '../home/home_screen.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  bool _isLoading = true;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 4), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Scaffold(
            body: Center(
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(right: Dimensions.padding16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 300,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://pbs.twimg.com/profile_images/1438096529185779715/nnw1HiOv_400x400.png"),
                        )),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          DefaultTextStyle(
                            style: const TextStyle(
                              fontSize: 40.0,
                              fontFamily: 'Horizon',
                            ),
                            child: AnimatedTextKit(
                              pause: Duration(milliseconds: 500),
                              animatedTexts: [
                                RotateAnimatedText('OYUN',
                                    textStyle: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1),
                                    duration: Duration(milliseconds: 500)),
                                RotateAnimatedText('VE',
                                    textStyle: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1),
                                    duration: Duration(milliseconds: 500)),
                                RotateAnimatedText('UYGULAMA',
                                    textStyle: TextStyle(
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1),
                                    duration: Duration(milliseconds: 500)),
                                RotateAnimatedText('AKADEMİSİ',
                                    textStyle: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1),
                                    duration: Duration(milliseconds: 500)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  /*Column(
              children: [
                LoadingIndicator(
                  indicatorType: Indicator.ballRotateChase, /// Required, The loading type of the widget
                  colors: [Colors.blue,Colors.red,Colors.yellow,Colors.green],       /// Optional, The color collections
                  strokeWidth: 1,                     /// Optional, The stroke of the line, only applicable to widget which contains line
                  backgroundColor: Colors.white,      /// Optional, Background of the widget/// Optional, the stroke backgroundColor
                ),

              ],
            ),*/
                ),
              ),
            ),
            backgroundColor: Colors.white,
          )
        : LoginPage();
  }
}
