import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final  Size size;
  final  int color;
  final  String img_name;
  final double width;
  final double height;


  const MyContainer({super.key, required this.size, required this.color, required this.img_name, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(12)
      ),
      child:ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            Image.asset('assets/images/$img_name',fit:BoxFit.cover,width: double.infinity, height: double.infinity,),
            Center(child:
            Icon(Icons.play_circle_fill_rounded, color: Colors.white, size: 48,))
          ],
        )
      ),

    );
  }
}
