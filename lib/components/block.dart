import 'package:flutter/material.dart';
import 'package:sberlab/assets/colors.dart';

class Block extends StatelessWidget {
  final width;
  final height;
  final padding;
  final child;

  const Block({super.key, required this.height, required this.width, this.padding, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding ?? 0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: MyColors().mainComponent,
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.02),
          boxShadow: const [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              offset: Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
