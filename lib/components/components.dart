import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ));

void navigateAndReplace(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);

//final Function validate;
Widget defaultFormField({
  required String testLabel,
  required IconData prefix,
  IconData? suffix,
  required TextEditingController control,
  required TextInputType type,
  required validate,
  Function()? onTap,
  TextStyle? typingStyle,
  TextStyle? labelStyle,
  Color? iconColor,
  void Function(String)? onChange,
  bool isPassword = false,
  void Function()? suffixPress,
}) =>
    TextFormField(
      decoration: InputDecoration(
        labelText: testLabel,
        labelStyle: labelStyle,
        border: OutlineInputBorder(),
        prefixIcon: Icon(
          prefix,
          color: iconColor,
        ),
        // prefixIconColor: Colors.white,
        suffixIcon: IconButton(
            onPressed: suffixPress,
            icon: Icon(
              suffix,
            )),
      ),
      style: typingStyle,
      controller: control,
      keyboardType: type,
      validator: validate,
      onTap: onTap,
      onChanged: onChange,
      obscureText: isPassword,
    );

Widget myDivider() => Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: Container(
        width: double.infinity,
        height: 2,
        color: Colors.grey,
      ),
    );
