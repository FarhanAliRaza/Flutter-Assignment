import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:date_field/date_field.dart';

import 'package:datepicker_dropdown/datepicker_dropdown.dart';

class DateField extends StatelessWidget {
  const DateField({super.key});

  @override
  Widget build(BuildContext context) {
    return DateTimeFormField(
      dateTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(250, 250, 252, .6),
      ),
      decoration: const InputDecoration(
        prefixIcon: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 12,
            ),
            child: Text(
              'Birthdate ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(250, 250, 252, .5),
              ),
            )),
        border: InputBorder.none,

        // labelText: 'BirthDate',
      ),
      mode: DateTimeFieldPickerMode.date,
      autovalidateMode: AutovalidateMode.always,
      onDateSelected: (DateTime value) {
        print(value);
      },
    );
  }
}
