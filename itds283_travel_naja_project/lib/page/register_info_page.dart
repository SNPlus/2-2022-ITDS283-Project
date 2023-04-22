import 'package:flutter/material.dart';
import 'package:itds283_travel_naja_project/page/register_payment_page.dart';

class RegisterInfoPage extends StatelessWidget {
  RegisterInfoPage({Key? key}) : super(key: key);
  // TextEditingController user_email = TextEditingController();
  // TextEditingController user_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 3, 14, 94),
              ),
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 70 ,right: 160),
              child: Column(children: const [
                Text(
                  "Join Our Community",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),),
              
                Padding(
                  padding: EdgeInsets.only(top:20,right: 40),
                  child: Text(
                    "Get full access today.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                          ),),
                ),]),),),),
        const Padding(
          padding: EdgeInsets.only(top:180,left: 25),
          child: Text(
                    "USER INFORMATION",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        const Padding(
          padding: EdgeInsets.only(top:230,left: 25),
          child: Text(
                    "Full Name",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        const Padding(
          padding: EdgeInsets.only(top:260,left: 25),
          child: SizedBox(
                  width: 300.0,
                  child: TextField(
                    // controller: user_email,
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5),
                        // borderRadius: BorderRadius.circular(50)
                      ),
                      labelText: 'Full Name',
                    ),
                  ),
                ),),
        const Padding(
          padding: EdgeInsets.only(top:330,left: 25),
          child: Text(
                    "Country",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        const Padding(
          padding: EdgeInsets.only(top:350,left: 25),
          child: SizedBox(
                  width: 300.0,
                  child: TextField(
                    // controller: user_email,
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5),
                        // borderRadius: BorderRadius.circular(50)
                      ),
                      labelText: 'Country',
                    ),
                  ),
                ),),
        const Padding(
          padding: EdgeInsets.only(top:440,left: 25),
          child: Text(
                    "SECURITY",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        const Padding(
          padding: EdgeInsets.only(top:480,left: 25),
          child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        const Padding(
          padding: EdgeInsets.only(top:500,left: 25),
          child: SizedBox(
                  width: 300.0,
                  child: TextField(
                    // controller: user_email,
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5),
                        // borderRadius: BorderRadius.circular(50)
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),),
        const Padding(
          padding: EdgeInsets.only(top:560,left: 25),
          child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        const Padding(
          padding: EdgeInsets.only(top:580,left: 25),
          child: SizedBox(
                  width: 300.0,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true, 
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 5),
                        // borderRadius: BorderRadius.circular(50)
                      ),
                      labelText: 'Password',
                    ),
                  ),
                ),),
        SizedBox(
                  width: 325.0,
                    child: Padding(
                    padding: const EdgeInsets.only(top:650,left: 25),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => RegisterPayment(
                                    // data: (user_email.text),
                                  )),
                        );
                      },
                      child: Text('NEXT', style: TextStyle(color: Colors.white)),
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
    );
  }
}