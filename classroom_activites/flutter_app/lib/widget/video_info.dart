import 'package:flutter/material.dart';
import 'package:flutter_app/widget/container.dart';

class VideoInfo extends StatelessWidget {
  final Size size;
  final String imgName;
  final String videoDesc;
  final String buttonLink;
  final String buttonText;

  const VideoInfo({super.key, required this.size, required this.buttonLink, required this.videoDesc, required this.buttonText, required this.imgName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10, left: 8, right: 5),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          MyContainer(
            size: size,
            color: 0xFFFFFFFF,
            img_name: imgName,
            width: size.width / 2.9,
            height: size.height / 9,
          ),
          SizedBox(width: 7,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    child: Text(videoDesc,
                      style: TextStyle(fontWeight: FontWeight.w600),
                      maxLines: 2,overflow: TextOverflow.ellipsis,),
                    onTap: (){
                      Navigator.pushNamed(context, '/details');
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: TextButton(onPressed: () {}, style: TextButton.styleFrom(backgroundColor: Colors.red, foregroundColor: Colors.white,), child: Text(buttonText, style: TextStyle(fontWeight:  FontWeight.w500),),),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
