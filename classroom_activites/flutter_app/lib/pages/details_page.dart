import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(
            children: [
            Stack(
                alignment: Alignment.center,
                children :[
                  Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.blue,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/images/img2.png', fit: BoxFit.cover, height: double.infinity, width: double.infinity,),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 15,
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 28,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                    ),
                  ),

                  Positioned(
                      top: 10,
                      right: 15,
                      child: Icon(Icons.share, color: Colors.white, size: 28,)),
                  Center(
                      child:Icon(Icons.play_circle_fill_rounded, color: Colors.white, size: 48,)
                  ),
                ]
            )
            ]
        )
      ),
    );
  }
}
