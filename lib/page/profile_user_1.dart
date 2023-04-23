import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:itds283_travel_naja_project/page/hotels.dart';
import 'package:itds283_travel_naja_project/page/profile_guest_1.dart';
import 'package:itds283_travel_naja_project/page/register_payment_page.dart';
import 'package:itds283_travel_naja_project/page/register_info_page.dart';
// import 'package:week12/page/home_page.dart';


class ProfilePage extends StatelessWidget {
  //สร้างตัวแปรไว้รับค่าจาก TextController
  final String email;
  final String password;
  
  ProfilePage({super.key, required this.email ,required this.password});
  TextEditingController user_email = TextEditingController();
  // TextEditingController user_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.only(top: 0),
              child: Column(children: [
                Image.asset(
                    width: MediaQuery.of(context).size.width * 0.30,
                    height: MediaQuery.of(context).size.height * 0.30,
                    "assets/images/intro_image.png"),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Text(
                    'Patthaweekan Panplab',
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 0,0,0)),
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 32, 32, 32)),
                ),
                
                SizedBox(
                  width: 250.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => HotelsListPage(
                                    
                                  )),
                        );
                      },
                      child: Text(style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),'MY RESERVATION'),
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
                SizedBox(
                  width: 250.0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => profile_guest_1(
                                    
                                  )),
                        );
                      },
                      child: Text(style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),'LOGOUT'),
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
