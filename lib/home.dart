// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex=0;

  final TextEditingController _textController=TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MediConnect",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text("Welcome",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text("Help"),
                leading: Icon(Icons.help),
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                title: Text("About"),
                leading: Icon(Icons.info),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: (int index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')
      ],
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.white60,
            padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
            child: CupertinoSearchTextField(
              controller: _textController,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

