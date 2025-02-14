import 'package:dunu/details_produits.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<Home> createState() {
    return HomeState();
  } 
}

final List<Map<String,String>> categories = [
  { "image":"assets/images/breakfast.png",
    "texte":"breakfast"
  },
  { "image":"assets/images/lunch.png",
    "texte":"Lunch"
  },
  { "image":"assets/images/dinner.png",
    "texte":"Dinner"
  },
  { "image":"assets/images/fastfood.jpg",
    "texte":"fast food"
  },
  { "image":"assets/images/dessert.png",
    "texte":"Dessert"
  },
  { "image":"assets/images/sain.png",
    "texte":"Sain"
  },
  { "image":"assets/images/other.png",
    "texte":"Plus"
  }
];

final List <Map<String,String>>recommendations = [
 
  { "image":"assets/images/macaron.jpeg",
    "texte":"Macarons",
    "auteur" :"by GABIAM Dede"
  },
  { "image":"assets/images/fine.jpeg",
    "texte":"Fine cuisine",
    "auteur" :"by honorine Gabi@m"
  },
   
  { "image":"assets/images/pate.webp",
    "texte":"Creamy Pasta",
    "auteur" :"by Miradie"
  },
  { "image":"assets/images/vraiRizgras.jpeg",
    "texte":"Riz gras",
    "auteur" :"by Yves"
  },
  { "image":"assets/images/rizGras.jpeg",
    "texte":"Creamy Pasta red",
    "auteur" :"by Richard"
  },
  { "image":"assets/images/legume.jpg",
    "texte":"Legune Abomey",
    "auteur" :"by Freddi Dede"
  },
  { "image":"assets/images/cuisinefine.jpg",
    "texte":"Chic cuisine ",
    "auteur" :"by Nabil"
  }, 

];

final List<Map<String,String>> recipes = [
  { "image":"assets/images/rec3.webp",
    "texte":"Melange de frite",
    "auteur" :"by honorine"
  },
  { "image":"assets/images/rec2.jpeg",
    "texte":"Donut pizza",
    "auteur" :"by GABIAM"
  },
  { "image":"assets/images/rec4.jpg",
    "texte":"Riz légume",
    "auteur" :"by GABIAM"
  },
  { "image":"assets/images/rec5.jpg",
    "texte":"Gouter",
    "auteur" :"by honorine"
  },
  { "image":"assets/images/rec6.jpg",
    "texte":"Dessert français",
    "auteur" :"by GABIAM"
  },
  { "image":"assets/images/rec7.jpg",
    "texte":"Fine fraise",
    "auteur" :"by GABIAM"
  },
  { "image":"assets/images/rec8.jpeg",
    "texte":"Gouter",
    "auteur" :"by honorine"
  }, 
  { "image":"assets/images/rec9.jpg",
    "texte":"Gouter",
    "auteur" :"by honorine"
  }, 
  
];

class HomeState extends State<Home>  {

int indexSelectionne = 0;  
  @override
  Widget build(BuildContext context) {  
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("What would you like\nto cook today?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              CircleAvatar( child: Image(image: AssetImage("assets/images/avat.jpg")),)]),

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
                  style: BorderStyle.none),),
                filled: true,
                contentPadding: EdgeInsets.all(16),),),  
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
              itemCount: categories.length,
              itemBuilder: (context, index) => 
                GestureDetector(  
                  onTap: () {
                    setState(() {
                    indexSelectionne = index;  
                    });
                  },
                child: Container(
                  height: 20,
                  width: 70,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    
                    color:indexSelectionne == index ? Colors.green : Colors.white,),
                
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(categories[index]["image"]!, height: 30, width: 30,),
                        SizedBox(height: 8,),
                    Text(categories[index]["texte"]!,style: TextStyle(fontSize: 13,color: indexSelectionne == index ? Colors.white : Colors.black,),)],) ),), ) ), 
                  
          SizedBox(height: 20,),

          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommendations",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green),)
              ],),
              
            SizedBox(height: 10,),
              
            SizedBox(
                
     

                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recommendations.length,
                  itemBuilder: (context, index) => 
                  GestureDetector(
                    onTap: () => 
                    setState(() {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => const DetailsProduits()),
    
    
  );
                    }),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                      height: 165,
                      width: 130,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(recommendations[index]["image"]!),fit: BoxFit.cover),)),

                      SizedBox(height: 4,),
                      Text(recommendations[index]["texte"]!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(recommendations[index]["auteur"]!,style: TextStyle(fontSize: 10),),

                  ]))) ),

  
            
            SizedBox(height: 20,) ,
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recipe Of The Week",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold) ),
                Text("See all",style: TextStyle(color: Colors.green),)
              ],),
            
            SizedBox(height: 10,),
            
            SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) => 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                      height: 185,
                      width: 240,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(image: AssetImage(recipes[index]["image"]!),fit: BoxFit.cover),)),

                      SizedBox(height: 4,),
                      Text(recipes[index]["texte"]!,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      Text(recipes[index]["auteur"]!,style: TextStyle(fontSize: 10),),]))),
          
            SizedBox(height: 20,),]));  
  }
  
}         
                    
                  
                
              
            
          
    
      
                    
                
          
            

                

            

           
            
            
            

              
            
            
             
          
              
      
     
  

