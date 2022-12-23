import 'package:flutter/material.dart';

String aslan = "Aslan";
String maymun = "Maymun";
String? text;

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    double deviceWidht = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 5,bottom: 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back)),
                ],
              ),
              Container(
                height: deviceHeight * 0.12,
                child: Center(
                    child: Text(
                  text ?? "birşeylere tıklanmadı!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      overflow: TextOverflow.fade),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(
                height: deviceHeight * 0.2,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.lightGreen),
                ),
                  onPressed: () {
                    setState(() {
                      text = "Ejderha";
                    });
                  },
                  child: Text(aslan,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),)),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.lightGreen),
                  ),
                  onPressed: () {
                    setState(() {
                      text = maymun;
                    });
                  },
                  child: Text(maymun,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),)),
            ],
          ),
        ),
      ),
    );
  }
}
