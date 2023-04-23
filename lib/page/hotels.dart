import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:itds283_travel_naja_project/page/hotel_detail.dart';

class HotelsListPage extends StatefulWidget {
  const HotelsListPage({Key? key}) : super(key: key);

  @override
  _HotelsListPageState createState() => _HotelsListPageState();
}

class _HotelsListPageState extends State<HotelsListPage> {
  List<dynamic> _hotels = [];

  Future<void> _fetchHotels() async {
    final response =
        await http.get(Uri.parse('https://api-mobile.yuttapichaiprom.repl.co/hotels'));
    if (response.statusCode == 200) {
      final List<dynamic> decodedJson = json.decode(response.body);
      setState(() {
        _hotels = decodedJson;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchHotels();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
        leading: BackButton(),
        backgroundColor: Color.fromARGB(255, 222, 203, 28),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 222, 203, 28),
              ),
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 10 ,right: 0),
              child: Column(children:[

                Padding(
                  padding: EdgeInsets.only(right: 230),
                  child: Text(
                    "Hello Customer !",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 30, 45, 214),
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              
                Padding(
                  padding: EdgeInsets.only(top:5,right: 210),
                  child: Text(
                    "Find your hotel",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                          ),),
                ),
                
              ]),
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top:60,right: 20, left: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search for hotel',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.grey[200],
            ),
          ),
        ),

        Padding(
          padding: EdgeInsets.only(top:130,left: 30),
          child: Text(
                    "Popular hotel",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,))),
        
        Padding(
          padding: EdgeInsets.only(top:150,right: 20),
          child: ListView.builder(
                itemCount: _hotels.length,
                itemBuilder: (context, index) {
                  final hotel = _hotels[index];
                  return Padding(
                    padding: EdgeInsets.only(top:10,left: 25),
                    child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  leading: SizedBox(
                                    width: 130.0,
                                    height: 200.0,
                                    child: Image.network(
                                      hotel['image'],
                                      fit: BoxFit.cover, 
                                    ),
                                  ),
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  ),
                                  title: Text(hotel['name']),
                                  subtitle: Text(hotel["price"]),
                                ),
                                ButtonBar(
                                  children: <Widget>[
                                    ElevatedButton(
                                      child: const Text('description'),
                                      onPressed: () {
                                        Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => HotelDetail(
                                              image : ((hotel['image'])),
                                              name : ((hotel['name'])),
                                              location : ((hotel['location'])),
                                              description : ((hotel['description'])),
                                              price : ((hotel['price'])),
                                              rating : ((hotel['rating'])),
                                              Recently_booked : ((hotel['Recently_booked'])),
                                                )),
                                      );
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                  );
                },
              ),
        ),
        ])
    );
  }
}
