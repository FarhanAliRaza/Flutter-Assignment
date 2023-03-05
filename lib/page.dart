import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:signup/custombutton.dart';
import 'package:signup/form.dart';
import 'package:signup/header.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Header(),
        CustomForm(),
        Container(
          alignment: Alignment.centerRight,
          child: CustomBtn(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
          child: Container(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  const Text("Have we met before?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(250, 250, 252, .5),
                      )),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Sign in",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(250, 250, 252, 1),
                        )),
                  )
                ],
              )),
        )
      ]),
    );
  }
}
