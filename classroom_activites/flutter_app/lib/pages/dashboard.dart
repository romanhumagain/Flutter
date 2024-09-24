import 'package:flutter/material.dart';
import 'package:flutter_app/widget/video_info.dart';

import '../widget/container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  horizontalScrollFunc(var size, var color) {
    return Container(
      width: size.width / 1.5,
      height: size.height / 5,
      decoration: BoxDecoration(
          color: Color(color), borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        // leading: Icon(Icons.menu),
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 10, top: 20),
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MyContainer(
                      size: size,
                      color: 0xFFFFFFFF,
                      img_name: 'img3.png',
                      width: size.width / 1.5,
                      height: size.height / 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyContainer(
                      size: size,
                      color: 0xFFFFFFFF,
                      img_name: 'img2.png',
                      width: size.width / 1.5,
                      height: size.height / 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyContainer(
                      size: size,
                      color: 0xFFFFFFFF,
                      img_name: 'img1.png',
                      width: size.width / 1.5,
                      height: size.height / 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    MyContainer(
                      size: size,
                      color: 0xFFFFFFFF,
                      img_name: 'img3.png',
                      width: size.width / 1.5,
                      height: size.height / 5,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      VideoInfo(
                      size: size,
                      buttonText: 'Forbes.com',
                      buttonLink: '',
                      videoDesc: 'Recently there are many pieces about how the ',
                      imgName: 'img3.png',
                    ),
                      VideoInfo(
                        size: size,
                        buttonText: 'Entrepreneur.com',
                        buttonLink: '',
                        videoDesc: 'Opinion that is expressed by the entrepreneur contributor ..... ',
                        imgName: 'img1.png',
                      ),
                      VideoInfo(
                        size: size,
                        buttonText: 'Coindesk.com',
                        buttonLink: '',
                        videoDesc: 'Recently there are many pieces about how the ',
                        imgName: 'img2.png',
                      ),
                      VideoInfo(
                        size: size,
                        buttonText: 'Forbes.com',
                        buttonLink: '',
                        videoDesc: 'Recently there are many pieces about how the ',
                        imgName: 'img1.png',
                      ),
                      VideoInfo(
                        size: size,
                        buttonText: 'Forbes.com',
                        buttonLink: '',
                        videoDesc: 'Recently there are many pieces about how the ',
                        imgName: 'img3.png',
                      ),],
                  ),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
