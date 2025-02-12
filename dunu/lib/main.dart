import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    
    home: HomePage(),
  ));
}
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    return HomePageState();
  } 
}

final List<Map<String,String>> Categories = [
  { "image":"assets/images/breakfast.png",
    "texte":"breakfast"
  },
  { "image":"assets/images/breakfast.png",
    "texte":"Lunch"
  },
  { "image":"assets/images/breakfast.png",
    "texte":"Dinner"
  },
  { "image":"assets/images/breakfast.png",
    "texte":"fast food"
  },
  { "image":"assets/images/breakfast.png",
    "texte":"Gouter"
  },
  { "image":"assets/images/avat.jpg",
    "texte":"Sain"
  },
  { "image":"assets/images/breakfast.png",
    "texte":"Plus"
  }
];

class HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello,Anne",
      style:TextStyle(fontSize: 13)),),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("What would you like\nto cook today?",
                    style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                    CircleAvatar(
                      child: Image(image: AssetImage("assets/images/avat.jpg")),
                    )
                ]),
          
            SizedBox(height: 20,),

                TextField(
                keyboardType: TextInputType.text,
                cursorColor: Color(0xFF075E54),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search) ,
                  suffixIcon: Icon(Icons.sort),
                  hintText: 'Search any recipes',
                  hintStyle: TextStyle(fontSize: 13),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(80),
                  borderSide: BorderSide(
                  width: 0, 
                  style: BorderStyle.none
                  ),
                  ),
                filled: true,
                contentPadding: EdgeInsets.all(16),
                ),
                ),

            SizedBox(height: 25,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green),)
              ],),
            SizedBox(height: 10,),
            SizedBox(
              height: 65,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Categories.length,
                itemBuilder: (context, index) => 
                Container(
                  height: 20,
                  width: 70,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all()
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(Categories[index]["image"]!, height: 20,width: 20,),
                      SizedBox(height: 8,),
                      Text(Categories[index]["texte"]!,style: TextStyle(fontSize: 13),)
                    ],
                  ))
                ),
              ),
            SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommendations",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green),)
              ],),
            ]),
         ),
        );
        
        
      
    
  }
  
}   