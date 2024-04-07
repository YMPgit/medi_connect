// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:medi_connect/forgot_pass.dart';
import 'package:medi_connect/home.dart';
import 'package:medi_connect/registration.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
          child: Center(
            child: Container(
              width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                        child: Image.network('https://img.freepik.com/premium-vector/making-appointment-with-doctor-flat-concept-vector-illustration_151150-12192.jpg')),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Login",style: TextStyle(color: Colors.blueAccent,fontSize:30,fontWeight: FontWeight.w700),),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          hintText: "Email",
                          labelText: "Email",
                          suffixIcon: const Icon(Icons.email),
                          labelStyle: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          hintText: "Password",
                          labelText: "Password",
                          suffixIcon: const Icon(Icons.lock),
                          labelStyle: const TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>ForgotPass()));
                      },
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text("Forgot Password?",style: TextStyle(color: Colors.black),),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(height: 50,width: 150),
                      child: ElevatedButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Home();}));
                      },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                          child:const Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),)
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Don't have an account?"),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return const Register();}));
                        },
                        child: const Text("Register here",style: TextStyle(color: Colors.blueAccent),))
                  ],
                ),
              ),
          ),
        ),
    );
  }
}