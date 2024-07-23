import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class FoodValueWidget extends StatelessWidget {
  final value;
  final count;
  const FoodValueWidget({super.key, required this.count, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
              value,
              style: TextStyle(
                  color: MyColors().darkComponent,
                  fontSize: 20
              )
          ),
          Text(
              count,
              style: TextStyle(
                // color: MyColors().darkComponent,
                  fontSize: 20
              )
          ),
        ],
      ),
    );
  }
}
