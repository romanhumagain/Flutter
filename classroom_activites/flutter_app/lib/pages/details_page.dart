import 'package:flutter/material.dart';
import 'package:flutter_app/widget/video_info.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Column(children: [
        Stack(alignment: Alignment.center, children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.blue,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/img3.png',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
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
              child: Icon(
                Icons.share,
                color: Colors.white,
                size: 28,
              )),
          Center(
              child: Icon(
            Icons.play_circle_fill_rounded,
            color: Colors.white,
            size: 48,
          )),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 15, left: 15),
          child: Column(
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "4 SURPRISING SILVER LININGS TO THE COVID-19",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Oliver Isaacs",
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  ),
                  Text(
                    "May 24, 2020",
                    style: TextStyle(color: Colors.deepOrangeAccent),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "From a decrease in pollution to the exposure of flaws in out system's, there are same gold things to come of the corona virus pandemic",
                  style: TextStyle(
                      color: Colors.black54, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(color: Colors.black12),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Related Video",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                    videoDesc:
                        'Opinion that is expressed by the entrepreneur contributor ..... ',
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
