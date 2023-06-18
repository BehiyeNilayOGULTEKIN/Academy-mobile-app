import 'package:akademi_mobil/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';

import '../../bottom_navbar.dart';

class TreePage extends StatefulWidget {
  const TreePage({Key? key}) : super(key: key);

  @override
  State<TreePage> createState() => _TreePageState();
}

class _TreePageState extends State<TreePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  StateMachineController? controller;
  SMIInput<double>? inputValue;
  double valueSlider = 0;
  double egitimYuzdesi = 83;

  @override
  void initState() {
    _animateValueSlider();
    super.initState();
  }

  void _animateValueSlider() async {
    double startValue = 0;
    double endValue = 83;
    Duration duration = Duration(seconds: 5);

    await Future.delayed(Duration(milliseconds: 3000));

    AnimationController controller =
        AnimationController(duration: duration, vsync: this);
    Animation<double> animation =
        Tween<double>(begin: startValue, end: endValue).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      ),
    );

    animation.addListener(() {
      setState(() {
        valueSlider = animation.value;
      });
    });

    controller.forward();

    setState(() {
      valueSlider = endValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4d4c61),
      body: Stack(
        children: [
          RiveAnimation.asset(
            "assets/tree-demo.riv",
            fit: BoxFit.fitWidth,
            onInit: (artboard) {
              controller = StateMachineController.fromArtboard(
                artboard,
                "State Machine 1",
              );

              if (controller != null) {
                artboard.addController(controller!);
                inputValue = controller?.findInput("input");
                inputValue?.change(50);
              }
            },
          ),
          Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.offAll(BottomNavBarPage());
                    },
                    child: Text(
                      "Uygulamaya Dön",
                      style: TextStyle(color: Colors.green.withOpacity(0.9)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tebrikler ağacınız büyümesi %71",
                      style: TextStyle(fontSize: 18, color: yesil),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35),
            ],
          )
          /*
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 60,
                ),
                child: Slider(
                  activeColor: Colors.green,
                  inactiveColor: Colors.green.withOpacity(0.1),
                  value: valueSlider,
                  onChanged: (v) {
                    setState(() {
                      valueSlider = v;
                    });
                    inputValue?.change(v);
                  },
                  min: 0,
                  max: 100,
                ),
              ),
            ],
          ),
          */
        ],
      ),
    );
  }
}
