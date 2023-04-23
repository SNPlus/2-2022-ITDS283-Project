import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:itds283_travel_naja_project/page/profile_user_1.dart';
// import 'package:week12/page/home_page.dart';


class Login_Page_1 extends StatelessWidget {
  final String email;
  final String password;
  Login_Page_1({super.key, required this.email ,required this.password});
  //สร้าง Text Controller
  TextEditingController user_email = TextEditingController();
  TextEditingController user_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //ปุ่มย้อนกลับ + AppBar ไม่มี backgroundColor
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              "assets/images/Travel_naja_logo.png"),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 3, 14, 94),
              ),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 222, 203, 28),
              ),
              height: MediaQuery.of(context).size.height * 0.5599,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
              child: Column(children: [
                Text(
                  "TRAVEL NAJA LOGIN SYSTEM",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, right: 270),
                    child: Text(
                      "Email",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                //กล่องรับ Input email
                SizedBox(
                  width: 300.0,
                  child: TextField(
                    controller: user_email,
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.greenAccent), 
                        borderRadius: BorderRadius.circular(50.0),
                      ),

                      labelText: 'Email',
                    ),
                  ),
                ),
                
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, right: 240),
                    child: Text(
                      "Password",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //กล่องรับ Input password
                SizedBox(
                  width: 300.0,
                  child: TextField(
                    controller: user_password,
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 3, color: Colors.greenAccent), 
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                //ปุ่ม เลือกไป หน้า ProfilePage
                SizedBox(
                  width: 200.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => ProfilePage(
                                    email: (user_email.text),password: (user_password.text),
                                  )),
                        );
                      },
                      child: Text(style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),'Login'),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        primary:
                            Color.fromARGB(255, 3, 14, 94), // Background color
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
