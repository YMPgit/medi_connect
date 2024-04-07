import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Forgot Password",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30,right: 30),
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: "Email",
                  suffixIcon: Icon(Icons.email),
                  labelText: "Email",
                  labelStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                )
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(height: 50,width: 150),
            child: ElevatedButton(onPressed: (){

            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
                child: const Text("Get OTP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),)
            ),
          )
        ],
      ) ,
    );
  }
}
