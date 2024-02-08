import 'package:flutter/material.dart';

Widget DefaultBotton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  required Function() function,
  required String text,
}) =>
    Container(
      color: background,
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(isUpperCase ? text.toUpperCase() : text,
            style: TextStyle(color: Colors.white)),
      ),
    );

Widget DefaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChange,
  required Function? validate,
  required String? label,
  required IconData? prefixIcon,
  IconData? safixIcon,
}) =>
    TextFormField(
      decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(prefixIcon),
          suffixIcon: Icon(safixIcon),
          border: OutlineInputBorder()),
      controller: controller,
      keyboardType: type,
      onChanged: (value) {
        onChange!(value);
      },
      onFieldSubmitted: (value) {
        onSubmit;
      },
      validator: (value) {
        // validate;
        if (value!.isEmpty) {
          return "Must Not Be Empty";
        }
        return null;
      },
    );
