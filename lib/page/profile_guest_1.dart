import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:itds283_travel_naja_project/page/login_page.dart';
// import 'package:week12/page/home_page.dart';
import 'package:itds283_travel_naja_project/page/register_info_page.dart';

class profile_guest_1 extends StatelessWidget {
  profile_guest_1({Key? key}) : super(key: key);
  TextEditingController user_email = TextEditingController();
  TextEditingController user_password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ใส่รูป LOGO
          Image.asset(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.5,
              "assets/images/Travel_naja_logo.png"),
          //เส้นสีฟ้า
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
          //พื้นหลังสีเหลือง
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
                //ปุ่ม เลือกไป หน้า Login 1
                SizedBox(
                  width: 250.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 60,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Login_Page_1(
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
                //ปุ่ม เลือกไป หน้า Register 1
                SizedBox(
                  width: 250.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => RegisterInfoPage(
                                    email: (user_email.text),password: (user_password.text),
                                  )),
                        );
                      },
                      child: Text(style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),'Sign Up'),
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
