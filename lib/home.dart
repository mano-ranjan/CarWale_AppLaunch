import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarWaleApp extends StatefulWidget {
  @override
  _CarWaleAppState createState() => _CarWaleAppState();
}

class _CarWaleAppState extends State<CarWaleApp> {
  Padding buildInnerList(String tag) {
    return Padding(
      padding: const EdgeInsets.only(left: 56),
      child: Container(
        height: 40,
        child: ListTile(
          title: Text(
            tag,
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      child: ListTile(
                        leading: Icon(
                          Icons.bookmark,
                          color: Colors.grey[400],
                        ),
                        title: Text(
                          'NEW CAR',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    buildInnerList('On-Road Price'),
                    buildInnerList('Upcoming Cars'),
                    buildInnerList('Car Loan'),
                    buildInnerList('Find New Cars'),
                    buildInnerList('Locate Dealers'),
                    Container(
                      height: 40,
                      child: ListTile(
                        leading: Icon(
                          Icons.car_rental,
                          color: Colors.grey[400],
                        ),
                        title: Text(
                          'USED CAR',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    buildInnerList('Used Car Right Price'),
                    buildInnerList('Sell Car'),
                    buildInnerList('My Listings'),
                    Container(
                      height: 40,
                      child: ListTile(
                        leading: Icon(
                          Icons.event_note_sharp,
                          color: Colors.grey[400],
                        ),
                        title: Text(
                          'OTHER',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ),
                    buildInnerList('Favourites'),
                    buildInnerList('Feedback'),
                    Padding(
                      padding: const EdgeInsets.only(left: 56),
                      child: Container(
                        height: 40,
                        child: ListTile(
                          trailing: Icon(
                            Icons.toggle_on,
                            size: 40,
                          ),
                          title: Text(
                            'Notifications',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    buildInnerList('Visitor Agreement'),
                    buildInnerList('Privacy Policy'),
                    buildInnerList('Log Out'),
                  ],
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
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
                    padding: EdgeInsets.only(top: 20, bottom: 30),
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
                    padding: const EdgeInsets.only(
                      top: 30,
                      bottom: 20,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('FIND CAR'),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 95, vertical: 15),
                        primary: Colors.red[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "NEXON EV - INDIA'S OWN ELECTRIC SUV",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 365,
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                      'Hyundai Alcazar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Container(
                      width: 300,
                      child: Column(
                        children: [
                          Image.asset('images/alcazar.jpg'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '₹ 15.00L - 18.00L',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text('Expected Price'),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'May 2021',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Expected Date'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 20),
                    child: Text(
                      'BASED ON YOUR SEARCHES',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Honda Amaze',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Image.asset('images/amaze.jpg'),
                        Text(
                          '₹ 7.62 Lakh Onwards',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Text('On-Road Price, Bangalore'),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.monetization_on_rounded,
                              size: 60,
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Instant Car Loan Deals',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'Apply Online & Get best car loan Offers',
                                ),
                              ),
                              Text(
                                'Explore Now',
                                style: TextStyle(
                                  color: Colors.blue[400],
                                  fontSize: 15,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 40000,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/testDrive3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'CHECK ON-ROAD PRICE',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText:
                                  'Type to select car name, e.g. Tata Indica',
                              hintStyle: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                child: Text('CHECK NOW'),
                                style: ElevatedButton.styleFrom(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 100),
                                  primary: Colors.red[900],
                                ),
                              ),
                              Text(
                                'Contact Details are not needed to get the price.',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          // child:
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'LATEST CAR UPDATES',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Text(
                            'Car News',
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
                            padding: EdgeInsets.symmetric(horizontal: 30),
                          ),
                          child: Text(
                            'Videos',
                            style: TextStyle(color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      children: [
                        Image.asset('images/carNews.jpg'),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Toyota records strengthened sales contribution from Northeast region owing to customer-first...',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
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
                    color: Colors.grey[800],
                    size: 30,
                  ),
                  Icon(
                    Icons.car_rental,
                    color: Colors.grey[800],
                    size: 30,
                  ),
                  Icon(
                    Icons.home,
                    color: Colors.red[900],
                    size: 40,
                  ),
                  Icon(
                    Icons.featured_play_list,
                    color: Colors.grey[800],
                    size: 30,
                  ),
                  Icon(
                    Icons.compare_sharp,
                    color: Colors.grey[800],
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
