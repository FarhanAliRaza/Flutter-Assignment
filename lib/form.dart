import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:signup/CustomText.dart';
import 'package:signup/datefield.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 16),
      child: Column(children: const [
        CustomTextWidget(
          label: 'Name',
          maxLength: 50,
          is_email: false,
          is_password: false,
        ),
        CustomTextWidget(
          label: 'Email',
          maxLength: 50,
          is_email: true,
          is_password: false,
        ),
        CustomTextWidget(
          label: 'Password',
          maxLength: 50,
          is_email: false,
          is_password: true,
        ),
        DateField(),
      ]),
    );
  }
}
