//import 'package:carwaledemo/nav.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarWaleApp extends StatefulWidget {
  @override
  _CarWaleAppState createState() => _CarWaleAppState();
}

class _CarWaleAppState extends State<CarWaleApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: SvgPicture.asset(
            'images/logo.svg',
            width: 20,
            height: 20,
            color: Colors.white,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Icon(Icons.location_on_outlined),
            ),
          ],
          //bottom: BottomAppBar(child: ,),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              'hello',
              style: TextStyle(fontSize: 50),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'images/topAd.jpg',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80, top: 20),
                    child: Text(
                      'Presenting Volvo XC 40',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'New cars',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        padding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                        padding: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      child: Text(
                        'Used cars',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                //width: MediaQuery.of(context).size.width * .8,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'Type to select car name, e.g. Tata Indica',
                    hintStyle: TextStyle(fontSize: 12),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('FIND CAR'),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 120, vertical: 20),
                    primary: Colors.red[900],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "NEXON EV - INDIA'S OWN ELECTRIC SUV",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 370,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(
                        'images/nexon.jpg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Built on India's first 5* rated platform - Nexon",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Starting at ₹ 13,99,000 Lakh'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                        primary: Colors.red[900],
                      ),
                      onPressed: () {},
                      child: Text('Explore More'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  'FEATURED CARS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Upcoming Launches',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[400],
                        padding: EdgeInsets.symmetric(horizontal: 30),
                      ),
                      child: Text(
                        'Just Launched',
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Honda Alcazar',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Image.asset('images/alcazar.jpg'),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '₹ 15.00L - 18.00L',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          child: BottomAppBar(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.car_repair,
                  color: Colors.red[900],
                  size: 30,
                ),
                Icon(
                  Icons.car_rental,
                  color: Colors.red[900],
                  size: 30,
                ),
                Icon(
                  Icons.home,
                  color: Colors.red[900],
                  size: 40,
                ),
                Icon(
                  Icons.featured_play_list,
                  color: Colors.red[900],
                  size: 30,
                ),
                Icon(
                  Icons.compare_sharp,
                  color: Colors.red[900],
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
