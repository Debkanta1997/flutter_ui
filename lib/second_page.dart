import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25),
            width: double.infinity,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Image.asset("assets/img4.jpg",fit: BoxFit.cover,height: 200,width: double.infinity,),
                Padding(padding: EdgeInsets.all(5),
                child: Text("DESSERTS",
                  style: TextStyle(
                      fontWeight: FontWeight.w700, fontSize: 20.0,
                      color: Colors.white, shadows:[Shadow(color: Colors.red, offset: Offset(0.0,1.0), blurRadius: 4.0)] ),
                ),),
              ],
            ),
          ),
          Container(
            child: Expanded(
              child: ListView(
                children: [
                  Foodlist("assets/img1.jpeg"),
                  Foodlist("assets/img2.jpeg"),
                  Foodlist("assets/img3.png"),
                  Foodlist("assets/img4.jpg"),
                  Foodlist("assets/img1.jpeg"),
                  Foodlist("assets/img2.jpeg"),
                  Foodlist("assets/img3.png"),
                  Foodlist("assets/img4.jpg"),
                ],
              ),
            ),
          )


        ],
      ),
    );
  }

  Widget Foodlist(String path){
    return Row(
      children: [
        Container(
          height: 90,
          width: 90,
          margin: EdgeInsets.only(top: 10,left: 10),
            child:  ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child:Image.asset(path,
                height: 93,
                width: 90,
                fit: BoxFit.cover,),
            ),
        ),
        SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Text("Mango Lassimango",
            style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 16
            ),),
            SizedBox(height: 5,),
            Text("Price : €4.5",style: TextStyle(
    fontWeight: FontWeight.w700, fontSize: 14
    ),),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green[800]),
              child: Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text("Add To Cart", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800),),),
            )
          ],
        )

      ],
    );
  }

}
