import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextWidget extends StatefulWidget {
  final label;
  final maxLength;
  final is_email;
  final is_password;
  const CustomTextWidget(
      {super.key,
      @required this.label,
      @required this.maxLength,
      @required this.is_email,
      this.is_password});

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  var errorText;

  bool emailValidation(value) {
    if (value.contains('@') && value.contains('.')) {
      return true;
    } else {
      return false;
    }
  }

  void onChanged(value) {
    setState(() {
      errorText = null;
    });
    if (widget.is_email) {
      print(value);

      if (emailValidation(value)) {
        setState(() {
          errorText = '';
        });
        ;
      } else {
        setState(() {
          errorText = 'Invalid email';
        });
      }
    } else if (widget.is_password) {
      if (value.length < 8) {
        setState(() {
          errorText = 'Password must be at least 8 characters';
        });
      }
    } else if (value.length > widget.maxLength) {
      setState(() {
        errorText = 'Max length is ${widget.maxLength}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.is_password,
      onChanged: onChanged,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Color.fromRGBO(250, 250, 252, 1),
      ),
      decoration: InputDecoration(
        errorText: errorText,
        fillColor: Colors.white,
        border: InputBorder.none,
        labelText: widget.label,
        labelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Color.fromRGBO(250, 250, 252, .5),
        ),
      ),
    );
  }
}
