import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
final _formkey = GlobalKey<FormState>();

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passwordVisible=true;
  bool isLoading = false;
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  TextEditingController controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Stack(
  children: [
    Container(

      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(0) ),
        color: Color(0XFF296D8C),
      ),
    ),
    Container(
decoration:  BoxDecoration(
  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
  image: DecorationImage(
      image: AssetImage("assets/image/bg.png"),fit: BoxFit.cover),
color: Colors.black
),
      height: 250,

    ),

    Padding(
      padding: EdgeInsets.fromLTRB(25, 300, 25, 0),

      child: SingleChildScrollView(
        child: Container(
        
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffe2e4e3),
            boxShadow: [
                      BoxShadow(
                color: Colors.black,
                offset: Offset(
                  0.0,
                  0.0,
                  ),
                spreadRadius:0.0,
              )
            ],
          ),
        
        height: 400,
        
          child:  Form(
            key: _formkey,
            child: Column(
              children: [
                Text("Login",style: TextStyle(fontSize: 30),),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: TextFormField(
                    controller: emailController,
                    style:  TextStyle(
                    fontSize: 15.0,
                    height: 1.5,color: Colors.blue),
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.black,),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter Email-Id'
                               ),
                               ),
                ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: TextFormField(
                controller: passwordController,
                style: TextStyle(
                  fontSize: 15.0,
                  height: 1.5,color: Colors.blue),
                  obscureText: passwordVisible,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Enter Password"
                  ),
                ),
            ),
                SizedBox(
                  height: 4,
                       ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text('Forgot Password',style: TextStyle(color: Colors.blue),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'home');
                    },
                    child: Text("Sign In",style: TextStyle(color: Colors.white,
                    fontSize: 20),
                    ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(
                      Size(275,35)),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.black),
                    shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))// manage the button radius
                       ),
                      ),
                    ),
                   ],
                  ),
                 ),
                 ),
                ),
                )
                ],
                ),


              );


           }
          }
