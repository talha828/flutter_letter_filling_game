import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class LetterO extends StatefulWidget {
  @override
  State<LetterO> createState() => _LetterOState();
}

class _LetterOState extends State<LetterO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background_image/1.jpg"),
                    fit: BoxFit.cover)),
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(180 / 360),
              child: SleekCircularSlider(
                  min: 0,
                  max: 100,
                  initialValue: 10,
                  appearance: CircularSliderAppearance(
                      counterClockwise: false,
                      customWidths: CustomSliderWidths(
                        trackWidth: 25,
                        shadowWidth: 1,
                      ),
                      customColors: CustomSliderColors(
                        shadowColor: Colors.black,
                        trackColor: Colors.white,
                        progressBarColor: Colors.amber,
                        hideShadow: false,
                        shadowMaxOpacity: 1,
                      ),
                      startAngle: 60,
                      angleRange: 360,
                      infoProperties: InfoProperties(
                          topLabelText: "",
                          bottomLabelText: "",
                          mainLabelStyle:
                              TextStyle(color: Colors.transparent))),
                  onChange: (double value) {
                    if (value.toInt()== 99) {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.SUCCES,
                        animType: AnimType.BOTTOMSLIDE,
                        title: 'congratulations',
                        desc: 'you win the game',
//btnCancelOnPress: () {},
                        btnOkOnPress: () {},
                      )..show();
                    }
                    print(value);
                  }),
            ),
          ),
        )
      ],
    ));
  }
}

// DoubleCircularSlider(
// 200,
// 0,
// 20,
// showHandlerOutter: false,
// secondarySectors: 10,
// sliderStrokeWidth: 20,
// shouldCountLaps: true,
// baseColor: Colors.grey.shade300,
// onSelectionChange: (dd, gg, hh) {
// if(dd==0&&gg==0&&hh==0){
// AwesomeDialog(
// context: context,
// dialogType: DialogType.SUCCES,
// animType: AnimType.BOTTOMSLIDE,
// title: 'congratulations',
// desc: 'you win the game',
// //btnCancelOnPress: () {},
// btnOkOnPress: () {},
// )..show();
// }
// print(
// dd.toString() + " " + gg.toString() + " " + hh.toString());
// },
// selectionColor: Colors.amber,
// ),
