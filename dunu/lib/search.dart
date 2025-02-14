import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  const Search({super.key});

  @override
  State<Search> createState() {
   return SearchState();
  }
  
}

class SearchState extends State<Search>{
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
                keyboardType: TextInputType.text,
                cursorColor: Color(0xFF075E54),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search) ,
                  suffixIcon: Icon(Icons.sort),
                  hintText: 'Search save recipes',
                  hintStyle: TextStyle(fontSize: 13),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide: BorderSide(
                  width: 0, 
                  style: BorderStyle.none
                  ),), 
                filled: true,
                contentPadding: EdgeInsets.all(16),), ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recently Viewed",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green,fontSize: 10,fontWeight: FontWeight.bold),)
              ],),
            SizedBox(height: 10.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("assets/images/rec9.jpg"),fit: BoxFit.cover)),),
                  SizedBox(  
                        height: 175,
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 82.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/macaron.jpeg"),fit: BoxFit.cover)),),
                            Container(
                              height: 82.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/rec4.jpg"),fit: BoxFit.cover)),
                              child: Center(
                                child: Text("32+\nRecipes",style: TextStyle(color: Colors.white),),
                              ),),],),),    
                    ],
                  )

            ,SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Made it",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green,fontSize: 10,fontWeight: FontWeight.bold),)
              ],),

            SizedBox(height: 10.0,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("assets/images/dessert.png"),fit: BoxFit.cover)),),
                  SizedBox(  
                        height: 175,
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 82.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/cuisinefine.jpg"),fit: BoxFit.cover)),),
                            Container(
                              height: 82.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/legume.jpg"),fit: BoxFit.cover)),
                              child: Center(
                                child: Text("10+\nRecipes",style: TextStyle(color: Colors.white),),
                              ),),],),),    
                    ],
                  ),
                  SizedBox(height: 20,),

              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Breakfast",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green,fontSize: 10,fontWeight: FontWeight.bold),)
              ],),

              SizedBox(height: 10,),    

                          Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    height: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage("assets/images/rec8.jpeg"),fit: BoxFit.cover)),),
                  SizedBox(  
                        height: 175,
                        width: MediaQuery.of(context).size.width*0.3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 82.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/pate.webp"),fit: BoxFit.cover)),),
                            Container(
                              height: 82.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/rec2.jpeg"),fit: BoxFit.cover)),
                              child: Center(
                                child: Text("32+\nRecipes",style: TextStyle(color: Colors.white),),
                              ),),],),),  
                    SizedBox(height: 20,)            
                    ],
                  ),
                ],
              ),
            
               
          
        );
      

  }
  
}
