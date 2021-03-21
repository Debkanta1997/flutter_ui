import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ecommerce", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(width: 10,),
                  Icon(Icons.shopping_cart_rounded),
                  SizedBox(width: 10,),
                ],
              ),
            )
          ],
        ),
      ],),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          physics: ScrollPhysics(),
        child: Container(
          color: Color(0x2badabab),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(
                        fontWeight: FontWeight.w600
                    ),
                    decoration: InputDecoration(
                      hintText: 'Search Your Product...',
                      suffixIcon: Icon(Icons.search,color: Color(0xFFe678c0),),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFe678c0),)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Kitten Food', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
              ),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(width: 5,),
                    kittenFoodSample('assets/kfimg1.png', "Whiskas Dry Cat Food junior", "MRP: Rs. 180/450 g"),
                    SizedBox(width: 10,),
                    kittenFoodSample('assets/kimg2.webp', "Whiskas Dry Cat Food junior", "MRP: Rs. 180/450 g"),
                    SizedBox(width: 10,),
                    kittenFoodSample('assets/img3.webp', "Whiskas Dry Cat Food junior", "MRP: Rs. 180/450 g"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Recomended Products', style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
              ),
              
              recomendedProduct('assets/kfimg1.png',"Purina Kitten Chow Nurture\nDry Kitten Food", "MRP: Rs. 180/450 g"),
              recomendedProduct('assets/kimg2.webp',"Purina Kitten Chow Nurture\nDry Kitten Food", "MRP: Rs. 180/450 g"),
              recomendedProduct('assets/kfimg1.png',"Purina Kitten Chow Nurture\nDry Kitten Food", "MRP: Rs. 180/450 g"),
            ],
          ),
        ),
      ),
    );
  }
  Widget kittenFoodSample(String path, String name, String price){
    return Container(
      width: 150,
      child: Card(
        elevation: 2.0,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(
            children: [
              Image.asset(path, width: 80,height: 60,),
              SizedBox(
                height: 10,
              ),
              Text(name,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
              SizedBox(
                height: 10,
              ),
              Text(price,style: TextStyle(fontSize: 12, ),),
              SizedBox(
                height: 15,
              ),
              Container(width: 30,height: 30,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Color(0xFFe678c0),
                    boxShadow:[BoxShadow(color: Colors.grey, offset: Offset(0.0,3), blurRadius: 2)]
                ),
              child: Icon(Icons.arrow_right_alt,color: Colors.white,),)
            ],
          ),
        )
      ),
    );
  }


  Widget recomendedProduct(String path, String name, String price){
  return Container(
    margin: EdgeInsets.all(5),
    child: Card(
      elevation: 2.0,
      shadowColor: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 10,left: 10,right: 20),
          child: Row(
            children: [
              Image.asset(path,width: 60,height: 60,fit: BoxFit.fill,),
              SizedBox(width: 30,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),maxLines: 2,overflow: TextOverflow.ellipsis,softWrap: true),
                  SizedBox(height: 5,),
                  Text(price,style: TextStyle(fontSize: 12,),maxLines: 1,),
                ],
              )
            ],
          ),),

          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: Container(width: 40,height: 40,

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xFFe678c0),

              ),
              child: Icon(Icons.arrow_right_alt,color: Colors.white,),),
          )
        ],
      ),
    ),
  );
  }

}
