import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

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
                        image: AssetImage("assets/back_ground.jpeg"),
                        fit: BoxFit.cover)),
                child: DoubleCircularSlider(
                  200,
                  0,
                  20,
                  showHandlerOutter: false,
                  secondarySectors: 10,
                  sliderStrokeWidth: 20,
                  shouldCountLaps: true,
                  baseColor: Colors.grey.shade300,
                  onSelectionChange: (dd, gg, hh) {
                    if(dd==0&&gg==0&&hh==0){
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
                    print(
                        dd.toString() + " " + gg.toString() + " " + hh.toString());
                  },
                  selectionColor: Colors.amber,
                ),
              ),
            )
          ],
        ));
  }
}