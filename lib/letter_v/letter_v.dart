import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class LetterV extends StatefulWidget {


  @override
  State<LetterV> createState() => _LetterVState();
}

class _LetterVState extends State<LetterV> {
  double value=0;
  double value1=0;
  bool test=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background_image/4.jpg"),
                    fit: BoxFit.cover
                )
            ),
            alignment: Alignment.center,
            child:
            Container(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.amber,
                    inactiveTrackColor: Colors.grey.shade50,
                    disabledActiveTickMarkColor: Colors.amber,
                    disabledInactiveTickMarkColor: Colors.transparent,
                    disabledActiveTrackColor: Colors.amber,
                    disabledInactiveTrackColor: Colors.white,
                    //trackShape: RectangularSliderTrackShape(),
                    disabledThumbColor: Colors.white,
                    thumbColor: Colors.blueAccent,
                    trackHeight: 18,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                    overlayColor: Colors.transparent
                  //overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                ),
                child: Stack(
                    alignment: Alignment.center,
                    children:[
                      Positioned(
                        top: 145,
                        left: 185,
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(70/360),
                          child: Container(
                            width: 200,
                            child: Slider(
                              min: 0,
                              max: 1000,
                              //divisions: 5,
                              value: value,
                              onChanged:test?null:(value) {
                                setState(() {
                                  this.value = value;
                                  if(value==1000.0){
                                    test=true;
                                    setState(() {});
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top:145,
                        left: 230,
                        child: RotationTransition(
                          turns: AlwaysStoppedAnimation(105/360),
                          child: Container(
                            width: 200,
                            child: Slider(
                              min: 0,
                              max: 1000,
                              //divisions: 5,
                              value: value1,
                              onChanged:test==false?null:(value) {
                                setState(() {
                                  this.value1 = value;
                                  if(value==1000.0){
                                    test=true;
                                    AwesomeDialog(
                                      context: context,
                                      dialogType: DialogType.SUCCES,
                                      animType: AnimType.BOTTOMSLIDE,
                                      title: 'congratulations',
                                      desc: 'you win the game',
                                      //btnCancelOnPress: () {},
                                      btnOkOnPress: () {},
                                    )..show();
                                    setState(() {});
                                  }
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ),
          )),

        ],
      ),
    );
  }
}
