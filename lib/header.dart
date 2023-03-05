import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const RotatedBox(
          quarterTurns: 3,
          child: Text("Sign up",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w800,
                color: Color.fromRGBO(251, 255, 255, 1),
              )),
        ),
        const SizedBox(
          width: 24,
        ),
        const Text("We can start\nsomething\nnew",
            style: TextStyle(
              fontSize: 30,
              height: 1.5,
              letterSpacing: 2,
              wordSpacing: 2,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(250, 250, 252, 1),
            ))
      ],
    );
  }
}
