import 'package:dunu/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsProduits extends StatefulWidget{
  const DetailsProduits({super.key});

  @override
  State<DetailsProduits> createState() {
    return DetailsProduitsState();
  }

}


final List<String> imagesList = [
  "assets/images/rec4.jpg",
  "assets/images/rec2.jpeg",
  "assets/images/rec6.jpg",
];
class DetailsProduitsState extends State<DetailsProduits>{
  final bool extendBodyBehindAppBar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Container(
          margin: EdgeInsets.all(8),
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,),
            child: IconButton(
              icon: Icon(Icons.arrow_back,color: Colors.black,),
              onPressed: () => 
                setState(() {
                  Navigator.pop(context,MaterialPageRoute(builder: (context) => const Home()),);}),),),),        
     
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.4,
            child: Stack(
              alignment:Alignment.bottomCenter,
              children: [
                PageView.builder(
                  itemCount: imagesList.length,
                  itemBuilder: (context, index) => 
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(imagesList[index]),fit: BoxFit.cover),)),),

                Positioned(
                      top: 240.0,
                      child: Container(
                        height: 500.0,
                         width: 190.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(10)),)),

                            

                            )]),)
                      
                    
                            
                             
                      
                    
                ]),
                ));
              
            
          
          
          
            
      
       
                    
              
              
          
    
      
    
  }
  
}