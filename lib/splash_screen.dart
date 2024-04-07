import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medi_connect/login.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4),(){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder:(context)=>const Login())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("MediConnect",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 50),),
      ),
    );
  }
}