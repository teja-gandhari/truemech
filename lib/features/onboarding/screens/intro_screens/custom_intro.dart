import 'package:flutter/material.dart';

class CustomIntro extends StatelessWidget {
  final String name1;
  final String name2;
  final String imageLink;
  final double fontSize;

  const CustomIntro({super.key, required this.name1, required this.name2, required this.imageLink, required this.fontSize,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRect(
                child: Image.asset(imageLink, width: 120, height: 120,fit: BoxFit.cover,),
              ),
              Text(name1,style: TextStyle(fontSize: fontSize,fontWeight: FontWeight.w600)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 8),
                child: Text(name2,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
