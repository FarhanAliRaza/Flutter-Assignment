import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key});
  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.arrow_right_alt_rounded,
              size: 32, color: Color.fromRGBO(68, 125, 124, 1))),
    );
  }
}
