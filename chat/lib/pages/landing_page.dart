import 'package:chat/pages/chat_dashboard.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Container(
                height: size.height,
                child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/chat_bg.jpg',
                  height: 400,
                  fit: BoxFit.cover,
                )),
            Positioned(
              top: 100,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  "",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ),
            ),
            Positioned(
              top: 350,
              right: 0,
              left: 0,
              child: Container(
                height: size.height / 1.5,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.cyan, Colors.pink],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    borderRadius: BorderRadius.circular(35)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "W E L C O M E !",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.grey
                            )
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                  color: Colors.white
                              )
                          ),
                          hintText: "your full name",
                          hintStyle: TextStyle(color: Colors.white70),
                          labelText: "Name",
                          labelStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(32),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ChatDashboard()));
                        },
                        child: Container(
                          height: size.height / 18,
                          width: size.width / 1.15,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(32)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                " Let's Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.arrow_forward_sharp,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
                ),
              ),
        ));
  }
}
