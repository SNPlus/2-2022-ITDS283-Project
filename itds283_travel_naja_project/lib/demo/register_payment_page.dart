import 'package:flutter/material.dart';

import 'profile_user_1.dart';

class RegisterPayment extends StatelessWidget {
  final String email;
  final String password;

  RegisterPayment({super.key, required this.email, required this.password});
  //สร้าง Text Controller
  TextEditingController user_email1 = TextEditingController();
  TextEditingController user_password = TextEditingController();
  bool isChecked = false;
  // TextEditingController user_email = TextEditingController();
  // TextEditingController user_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Color.fromARGB(0, 255, 255, 255),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color.fromARGB(
              255, 255, 255, 255), // set the color of the back button icon
        ),
      ),
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 3, 14, 94),
            ),
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 70, right: 0),
              child: Column(children: const [
                Padding(
                  padding: EdgeInsets.only(right: 230),
                  child: Text(
                    "Almost Done !",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, right: 120),
                  child: Text(
                    "Plase full in payments information.",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 180, left: 25),
            child: Text("CREDIT CARD PAYMENTS",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ))),
        const Padding(
            padding: EdgeInsets.only(top: 230, left: 25),
            child: Text("Card Number",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ))),
        const Padding(
          padding: EdgeInsets.only(top: 260, left: 25),
          child: SizedBox(
            width: 300.0,
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5),
                  // borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'Card Number',
              ),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 330, left: 25),
            child: Text("Holder Name",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ))),
        const Padding(
          padding: EdgeInsets.only(top: 350, left: 25),
          child: SizedBox(
            width: 300.0,
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5),
                  // borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'Holder Name',
              ),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 420, left: 25),
            child: Text("Rank Name",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ))),
        const Padding(
          padding: EdgeInsets.only(top: 440, left: 25),
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
                labelText: 'Rank Name',
              ),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 510, left: 25),
            child: Text("Credit Expired Date",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ))),
        const Padding(
          padding: EdgeInsets.only(top: 530, left: 25),
          child: SizedBox(
            width: 300.0,
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 255, 255, 255),
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 5),
                  // borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'MM/YY',
              ),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 600, left: 25),
            child: Text("CVV",
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ))),
        const Padding(
          padding: EdgeInsets.only(top: 620, left: 25),
          child: SizedBox(
            width: 300.0,
            child: TextField(
              obscureText: false,
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
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 680, left: 10),
          child: MyStatefulWidget(),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 695, left: 50),
            child: Text("I accapt the agreement of Use")),
        SizedBox(
          width: 325.0,
          child: Padding(
            padding: const EdgeInsets.only(top: 730, left: 25),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => ProfilePage(
                            email: (email),
                            password: (user_password.text),
                          )),
                );
              },
              child: Text('NEXT'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                primary: Color.fromARGB(255, 3, 14, 94), // Background color
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      return Color.fromARGB(255, 3, 14, 94);
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
