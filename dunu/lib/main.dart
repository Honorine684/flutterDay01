import 'package:dunu/Home.dart';
import 'package:dunu/search.dart';
import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: const GetStarted(),
  ));
}
class GetStarted extends StatefulWidget{
  const GetStarted({super.key});
  @override
  State<GetStarted> createState() {
    return GetStartedState();
  } 
}

class GetStartedState extends State<GetStarted> with SingleTickerProviderStateMixin {
  int _tabIndex = 1;
  int get tabIndex => _tabIndex;
  set tabIndex(int v) {
    _tabIndex = v;
    setState(() {});
  }
  int indexSelectionne = 0;
  late PageController pageController;
  final pages = [
    Home(),
    Search(),
    Search()
  ];
  int activeBottomNavigation = 0;
  int activeNavBar = 0;
  final appBar = [
    "Hello,Anne",
    "BOOKMARK",
    "favorites"
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabIndex);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBar[activeNavBar],  style:TextStyle(fontSize: 13)),),
      
      body:pages[activeBottomNavigation],
      bottomNavigationBar:  CircleNavBar(
        activeIcons: const [
          Icon(Icons.home, color: Color.fromARGB(255, 58, 183, 89)),
          Icon(Icons.add, color: Color.fromARGB(255, 58, 183, 89)),
          Icon(Icons.search, color: Color.fromARGB(255, 58, 183, 89)),], 
        
        inactiveIcons: const [
          Icon(Icons.home, color: Colors.grey),
          Icon(Icons.add, color: Colors.grey),
          Icon(Icons.search, color: Colors.grey),],
        color: Colors.white,
        circleColor: Colors.white,
        height: 60,
        circleWidth: 60,
        activeIndex: activeBottomNavigation,
        onTap: (v) {
          setState(() {
            activeBottomNavigation = v;
            activeNavBar = v;
          });
          
        },
                
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        
        ),
        shadowColor: Color.fromARGB(255, 58, 183, 89),
        circleShadowColor: Color.fromARGB(255, 58, 183, 89),
        elevation: 10,
        
      ),
    );  
}
}            