import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sberlab/assets/sizes.dart';
import 'package:sberlab/components/block.dart';
import 'package:sberlab/components/drop_button.dart';
import 'package:sberlab/components/my_toggle_buttons.dart';

import '../assets/colors.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> heights = [];
  List<String> weights = [];
  List<String> ages = [];
  List<String> physicalActivityLevels = ['отсутствует', 'небольшая', 'умеренная', 'большая'];
  List<String> diagnoses = ['диабет', 'рпп', 'гастрит', 'шизофрения'];

  String? currentHeight;
  String? currentWeight;
  String? currentAge;
  String? currentPhysicalActivityLevel;
  String? currentDiagnose;

  String hintHeight = 'Рост';
  String hintWeight = 'Вес';
  String hintAge = 'Возраст';
  String hintPhysicalActivityLevel = 'Физическая активность';
  String hintDiagnose = 'Диагноз';

  final List<bool> selected = <bool>[false, true];

  @override
  void initState() {
    for (int i = 100; i < 210; i++) {
      heights.add('$i см');
    }

    for (int i = 40; i < 150; i++) {
      weights.add('$i кг');
    }

    for (int i = 6; i < 100; i++) {
      var val = i.toString();
      if (9 < i && i < 20) {
        val += ' лет';
      } else if (i % 10 == 1) {
        val += ' год';
      } else if (1 < i % 10 && i % 10 < 5) {
        val += ' года';
      } else val += ' лет';
      ages.add(val);
    }
    super.initState();
  }

  void onChangedAge(String? age) {
    setState(() => currentAge = age ?? currentAge);
  }

  void onChangedHeight(String? height) {
    setState(() => currentHeight = height ?? currentHeight);
  }

  void onChangedWeight(String? weight) {
    setState(() => currentWeight = weight ?? currentWeight);
  }

  void onChangedPhysicalActivityLevel(String? physicalActivityLeve) {
    setState(() => currentPhysicalActivityLevel = physicalActivityLeve ?? currentPhysicalActivityLevel);
  }

  void onChangedDiagnose(String? diagnose) {
    setState(() => currentDiagnose = diagnose ?? currentDiagnose);
  }

  void onChangedGender(int index) {
    print(444);
    setState(() {
      for (int i = 0; i < selected.length; i++) {
        selected[i] = i == index;
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors().main,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
          child: Column(
            children: [
              Block(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.1,
                padding: MediaQuery.of(context).size.width * 0.01,
                child: Row(
                  children: [
                    TopDropButton(dropdownValue: currentHeight, list: heights, onChanged: onChangedHeight, hint: hintHeight,), //height
                    TopDropButton(dropdownValue: currentWeight, list: weights, onChanged: onChangedWeight, hint: hintWeight,), //weight
                    TopDropButton(dropdownValue: currentAge, list: ages, onChanged: onChangedAge, hint: hintAge,), // age
                    MyToggleButtons(selected: selected, onChanged: onChangedGender),
                    TopDropButton(dropdownValue: currentPhysicalActivityLevel, list: physicalActivityLevels, onChanged: onChangedPhysicalActivityLevel, hint: hintPhysicalActivityLevel,), //physicalActivityLevel
                    TopDropButton(dropdownValue: currentDiagnose, list: diagnoses, onChanged: onChangedDiagnose, hint: hintDiagnose,), //diagnoseId
                    TextButton(
                        onPressed:() {

                    },
                        child: Text(
                            'Найти рецепты',
                          style: TextStyle(
                            color: MyColors().darkComponent,
                            fontSize: 20,
                             decoration: TextDecoration.underline
                          ),
                        )
                    )
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Block(
                    width: MediaQuery.of(context).size.width * 0.65,
                    height: MediaQuery.of(context).size.height * 0.8,
                    padding: MediaQuery.of(context).size.width * 0.01,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Завтрак'
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Block(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.height * 0.6,
                    padding: MediaQuery.of(context).size.width * 0.01
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }

  // Widget _d (List<String> list) {
  //   dropdownValue = list.first,
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 20.0),
  //     child: DropdownButton<String>(
  //       value: dropdownValue,
  //       onChanged: (String? newValue) {
  //         setState(() => dropdownValue = newValue ?? dropdownValue);
  //         print(5554444);
  //         print(dropdownValue);
  //         onChanged(newValue);
  //       },
  //       items: list
  //           .map<DropdownMenuItem<String>>(
  //               (String value) => DropdownMenuItem<String>(
  //             value: value,
  //             child: Text(value),
  //           ))
  //           .toList(),
  //
  //       // add extra sugar..
  //       icon: Icon(Icons.keyboard_arrow_down),
  //       iconSize: 20,
  //       underline: SizedBox(),
  //       menuMaxHeight: MediaQuery.of(context).size.height * 0.3,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //   );
  // }
}

// class CustomSwitch extends StatefulWidget {
//   final bool value;
//   final ValueChanged<bool> onChanged;
//
//   CustomSwitch({
//     Key key,
//     this.value,
//     this.onChanged})
//       : super(key: key);
//
//   @override
//   _CustomSwitchState createState() => _CustomSwitchState();
// }

// class _CustomSwitchState extends State<CustomSwitch>
//     with SingleTickerProviderStateMixin {
//   Animation _circleAnimation;
//   AnimationController _animationController;
//
//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 60));
//     _circleAnimation = AlignmentTween(
//         begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
//         end: widget.value ? Alignment.centerLeft :Alignment.centerRight).animate(CurvedAnimation(
//         parent: _animationController, curve: Curves.linear));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animationController,
//       builder: (context, child) {
//         return GestureDetector(
//           onTap: () {
//             if (_animationController.isCompleted) {
//               _animationController.reverse();
//             } else {
//               _animationController.forward();
//             }
//             widget.value == false
//                 ? widget.onChanged(true)
//                 : widget.onChanged(false);
//           },
//           child: Container(
//             width: 45.0,
//             height: 28.0,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24.0),
//               color: _circleAnimation.value ==
//                   Alignment.centerLeft
//                   ? Colors.grey
//                   : Colors.blue,),
//             child: Padding(
//               padding: const EdgeInsets.only(
//                   top: 2.0, bottom: 2.0, right: 2.0, left: 2.0),
//               child:  Container(
//                 alignment: widget.value
//                     ? Alignment.centerRight
//                     : Alignment.centerLeft,
//                 child: Container(
//                   width: 20.0,
//                   height: 20.0,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
