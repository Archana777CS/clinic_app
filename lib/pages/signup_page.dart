import 'package:clinic_mobile_app/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Enter Patient-Name:",
                    style: TextStyle(
                        color: Color(0xFF124848), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Patient-Name',
                          ))))),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Age:",
                    style: TextStyle(
                        color: Color(0xFF124848), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Age',
                          ))))),

              const Text(
                "Gender:",
                style: TextStyle(
                    color: Color(0xFF124848), fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                child: GenderPickerWithImage(
                  showOtherGender: true,
                  verticalAlignedText: false,
                  selectedGender: Gender.Male,
                  selectedGenderTextStyle: TextStyle(
                      color: Color(0xFF8b32a8), fontWeight: FontWeight.bold),
                  unSelectedGenderTextStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  onChanged: (Gender? gender) {
                    print(gender);
                  },
                  equallyAligned: true,
                  animationDuration: Duration(milliseconds: 300),
                  isCircular: true,
                  // default : true,
                  opacityOfGradient: 0.4,
                  padding: const EdgeInsets.all(3),
                  size: 50, //default : 40
                ),
              ),
              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Mobile No:",
                    style: TextStyle(
                        color: Color(0xFF124848), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Mobile No.',
                          ))))),

              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Enter Email Address:",
                    style: TextStyle(
                        color: Color(0xFF124848), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              decoration: const InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Email',
                          ))))),

              Row(
                children: const [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Enter your Password: ",
                    style: TextStyle(
                        color: Color(0xFF124848), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Password',
                              ))))),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 120,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.double_arrow_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF124848),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("Already a member? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SigninScreen()));
                      },
                      child: const Text(
                        "SignIn",
                        style: TextStyle(
                            color: Color(0xFF124848),
                            decoration: TextDecoration.underline),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
