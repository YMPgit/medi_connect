// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:medi_connect/login.dart';

class Register extends StatefulWidget{
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.blueAccent),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 180,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            border:OutlineInputBorder(
                            ),
                            hintText: "First Name",
                            labelText: "First Name",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 180,
                      child: const TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.person),
                            border:OutlineInputBorder(
                            ),
                            hintText: "Last Name",
                            labelText: "Last Name",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                        ),
                        keyboardType: TextInputType.text,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                 height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Contacts",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ),
                Container(
                  width: 370,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.contact_page),
                          border:OutlineInputBorder(
                          ),
                          hintText: "Contact No.",
                          labelText: "Contact No.",
                          labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Container(
                  width: 370,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.email),
                          border:OutlineInputBorder(
                          ),
                          hintText: "Email",
                          labelText: "Email",
                          labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Container(
                  width: 370,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.password),
                          border:OutlineInputBorder(
                          ),
                          hintText: "Password",
                          labelText: "Password",
                          labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black)
                      ),
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: 185,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints.tightFor(height: 50),
                      child: ElevatedButton(
                       style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return const Login();}));
                          },
                          child: const Text("Register!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),)),
                    ),
                  ),
                )
              ],
            ),
      ),
    );
  }
}