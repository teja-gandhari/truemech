import 'package:flutter/material.dart';

class CustomIconsButtons extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  const CustomIconsButtons({super.key, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 50,
      child: OutlinedButton(onPressed: onPressed,
          style:OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.grey,width: 1),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ) ,child: Icon(icon)),
    );
  }
}
