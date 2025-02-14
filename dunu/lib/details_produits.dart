import 'package:dunu/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsProduits extends StatefulWidget {
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

final List<Map<String, String>> ingredients = [
  {"image": "assets/images/macaron.jpeg", "texte": "Tomate", "auteur": "150g"},
  {"image": "assets/images/fine.jpeg", "texte": "Riz", "auteur": "160g"},
  {"image": "assets/images/pate.webp", "texte": "huile", "auteur": "6g"},
  {
    "image": "assets/images/vraiRizgras.jpeg",
    "texte": "charbon",
    "auteur": "1000f"
  },
  {"image": "assets/images/rizGras.jpeg", "texte": "Piment", "auteur": "100f"},
  {"image": "assets/images/legume.jpg", "texte": "frite", "auteur": "1200f"},
  {
    "image": "assets/images/cuisinefine.jpg",
    "texte": "Ketchup",
    "auteur": "20g"
  },
];

class DetailsProduitsState extends State<DetailsProduits> {
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
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () => setState(() {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              }),
            ),
          ),
          actions: [
            Container(
                margin: EdgeInsets.all(8),
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.bookmark)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4 + 10,
                  child: PageView.builder(
                    itemCount: imagesList.length,
                    itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imagesList[index]),
                          fit: BoxFit.cover),
                    )),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.4,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    padding: EdgeInsets.only(top: 30, left: 18, right: 18),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Choco Macarons",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                Text("4.5")
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "by Rachel William",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.lock_clock),
                            Text(
                              "10mins",
                              style: TextStyle(fontSize: 10),
                            ),
                            Icon(Icons.mediation_rounded),
                            Text(
                              "Medium",
                              style: TextStyle(fontSize: 10),
                            ),
                            Icon(Icons.receipt_long),
                            Text(
                              "512 kcal",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("Description",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19))
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: [
                            Text(
                                "Chocolate is the best kind of dessert! this choco\nmacarons are simply havenlyDelicate littlr cookies filled\nwith chocolate ganache.",
                                style: TextStyle(fontSize: 11))
                          ],
                        ),
                        Row(
                          children: [
                            Text("Ingredients",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19))
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: ingredients.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) => Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  margin:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ingredients[index]["image"]!),
                                          fit: BoxFit.cover)),
                                ),
                                Text(
                                  ingredients[index]["texte"]!,
                                  style: TextStyle(fontSize: 12),
                                ),
                                Spacer(),
                                Text(ingredients[index]["auteur"]!,
                                    style: TextStyle(fontSize: 12))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.9,
                  left:MediaQuery.of(context).size.width * 0.25 ,
                    child: ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                            Icons.video_call,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 34, 202, 118),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        label: Text(
                          textAlign: TextAlign.center,
                          "Watch videos",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )))
              ]),
            )
          ]),
        ));
  }
}
