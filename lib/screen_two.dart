import 'package:flutter/material.dart';
import 'package:flutterquizone/scree_three.dart';

String textIstanbul = "İstanbul";
String textAnkara = "Ankara";
String textIzmir = "İzmir";

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidht = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6600cc),
                Color(0xFF9966CC),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(deviceHeight * 0.05),
            child: Expanded(
              child: ListView(
                children: [
                  MyContainer(
                      deviceHeight: deviceHeight,
                      deviceWidht: deviceWidht,
                      text: textIstanbul,
                      color: Colors.orange,
                      30,
                      Colors.transparent),
                  SizedBox(
                    height: deviceHeight * 0.04,
                  ),
                  MyContainer(
                      deviceWidht: deviceWidht,
                      deviceHeight: deviceHeight,
                      text: textAnkara,
                      color: Colors.green,
                      14,
                      Colors.transparent),
                  SizedBox(
                    height: deviceHeight * 0.04,
                  ),
                  MyContainer(
                      deviceWidht: deviceWidht,
                      deviceHeight: deviceHeight,
                      text: textIzmir,
                      color: Colors.white,
                      14,
                      Colors.blue),
                  SizedBox(
                    height: deviceHeight * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: deviceWidht * 0.25),
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenThree()));
                      },
                      child: Text("Bas beaaa",style: TextStyle(color: Colors.white),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.pink),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget MyContainer(double? fontSize, Color textColor,
    {required String text,
    required double deviceWidht,
    required double deviceHeight,
    required Color color}) {
  return Container(
    width: deviceWidht * 0.6,
    height: deviceHeight * 0.12,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            fontSize: fontSize,
            backgroundColor: textColor,
            color: Colors.white),
      ),
    ),
    decoration: BoxDecoration(
      boxShadow: [BoxShadow(
        color: Colors.black26,
        blurRadius: 4,
        offset: Offset(0, 2),
        spreadRadius: 2
      ),],
      borderRadius: BorderRadius.circular(25),
      color: color,
    ),
  );
}

///ekran 2 ve ekran 3 adında iki route

///ekran 2 de alt alta istanbul ankara izmir olsun
///
///istanbulun fontsize 30 ankaranın rengi yeşil izmirin banckgorundcolor mavi
///
///
///sehirlerin altında buton olucak,butonda ne yazdıgı önemsiz tıklayınca ekran 3 e geçsin
///
///
///ekran 3 de bit buton olcak butonun üstünde aslan ve maymun yazısı olucak
///
///ekran 3 ün butonun üstüne basınca aslan ejdarha olucak
///
///
///githubda baun-furkan-flutter repo olustur sonra bunu pushla
