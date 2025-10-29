import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String nameHint;
  final IconData prefixIcon;
  final bool obscureText;
  final TextCapitalization textCapitalization;
  final TextInputType keyboardType;

  const CustomTextField({super.key,
    required this.controller,
    required this.nameHint,
    required this.prefixIcon,
    this.obscureText=false,
    this.textCapitalization=TextCapitalization.words,
    required this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        obscureText: obscureText,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 16,
          color: Colors.black
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: Colors.grey),
          enabled: true,
          hintText: nameHint,
          labelStyle: const TextStyle(
            color: Colors.grey
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey,width: 3.0)
          ),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red,width: 2.0)
            ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.all(
              Radius.circular(18),
            )
          )

        ),

      ),

    );
  }
}
