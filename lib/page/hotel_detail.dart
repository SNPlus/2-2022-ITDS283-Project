import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:itds283_travel_naja_project/page/profile_user_1.dart';

class HotelDetail extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final String description;
  final String price;
  final String rating;
  final String Recently_booked;
  HotelDetail(
      {super.key,
      required this.image,
      required this.name,
      required this.location,
      required this.description,
      required this.price,
      required this.rating,
      required this.Recently_booked});
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
          Image.network(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            image,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 222, 203, 28),
              ),
              height: MediaQuery.of(context).size.height * 0.60,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
              child: Column(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    location,
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 68, 68, 68),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    description,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 0, 11, 133),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      "Price                 Rate                    recently booked",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            price,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 11, 133),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            rating,
                            style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 0, 11, 133),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: SizedBox(width: 8),
                      ),
                      Image.network(
                        Recently_booked,
                        width: MediaQuery.of(context).size.width * 0.07,
                        height: MediaQuery.of(context).size.height * 0.04,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, right: 240),
                    child: Text(
                      "Reservation",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, right: 270),
                    child: Text(
                      "Check In",
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
                  width: 350.0,
                  height: 40,
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 255, 255, 255),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.greenAccent),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      labelText: 'Date',
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, right: 100),
                    child: Text(
                      "Room type            Number of Guset",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //กล่องรับ Input password
                    SizedBox(
                      width: 110.0,
                      height: 40,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          labelText: 'Choose Type',
                        ),
                      ),
                    ),

                    //กล่องรับ Input password

                    SizedBox(
                      width: 110.0,
                      height: 40,
                      child: TextField(
                        obscureText: false,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 255, 255, 255),
                          border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.greenAccent),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          labelText: 'Number of Guest',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90.0,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => ProfilePage(email: 'email', password: 'password',
                                              
                                                ))
                      );},
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          primary: Color.fromARGB(255, 3, 14, 94),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
