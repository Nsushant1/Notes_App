import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  const CustomTextfield({
    super.key,
    required this.textEditingController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    final myBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          focusedBorder: myBorder,
          enabledBorder: myBorder,
          hintText: hintText,
        ),
      ),
    );
  }
}
