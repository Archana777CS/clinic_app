import 'dart:async';

import 'package:clinic_mobile_app/core/constants/app_colors.dart';
import 'package:clinic_mobile_app/pages/signup_page.dart';
import 'package:clinic_mobile_app/pages/user_home_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SigninScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/medicare_logo.png'),
                  fit: BoxFit.fill,
                )
            )
        ),
    );
  }
}
class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight:200,backgroundColor: const Color(0xff124848),title:const Text("MediCare",style: TextStyle(fontSize: 40),),elevation:100.0,shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15),
        ),
      ),),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:   Column(
          children: [
            const SizedBox(height: 80,),
            Row(
              children: [


              ],
            ),
            const SizedBox(height: 50,),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text("Enter Your Email Address:", style: TextStyle(color: Color(0xFF124848), fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 10,),

            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Email',
                            ))))),

            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text("Enter your Password: ", style: TextStyle(color: Color(0xFF124848), fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 10,),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Password',
                            ))))),
            const SizedBox(height: 30,),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF124848),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: IconButton(

                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const UserHomePage()));
                    },  icon: const Icon(Icons.double_arrow_outlined, size: 30, color: Colors.white,))),
            const SizedBox(height: 20,),
            Row(
              children: [
                const SizedBox(width: 20,),
                const Text("New to MediCare "),
                const SizedBox(width: 100,),
                GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignupPage()));
                    },
                    child: const Text("SignUp", style: TextStyle(color: AppColors.primaryColor, decoration: TextDecoration.underline),)),

              ],
            ),

          ],
        ),
      ),
    );
  }
}



