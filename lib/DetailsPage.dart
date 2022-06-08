// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String productName;
  final String price;
  final String location;
  final String image;
  const DetailsPage({Key? key, required this.productName, required this.price, required this.location, required this.image}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        foregroundColor: Colors.transparent,
        shadowColor: Colors.white,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(onTap: ()=> Navigator.pop(context), child: Icon(Icons.arrow_back,color: Colors.black,)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [widget.image, 'https://i0.wp.com/rusautonews.com/wp-content/uploads/2019/02/Lamborghini-Aventador-SVJ.jpg?fit=800500', 'https://img.freepik.com/free-photo/red-lamborghini-sports-car_2227-3.jpg?w=2000'].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(
                        color: Colors.transparent
                      ),
                      child: Image.network(
                        i,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.productName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                '1.6 DURATEC CLXI',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.price,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey.shade200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.local_gas_station, color: Colors.black,),
                              const SizedBox(width: 10,),
                              Text(
                                'Petrol',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.speed, color: Colors.black,),
                              const SizedBox(width: 10,),
                              Text(
                                '320 km/h',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.settings, color: Colors.black,),
                              const SizedBox(width: 10,),
                              Text(
                                'Manual',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(height: 2, color: Colors.black,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.account_circle, color: Colors.black,),
                              const SizedBox(width: 10,),
                              Text(
                                'Owner',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.pin_drop, color: Colors.black,),
                              const SizedBox(width: 10,),
                              Text(
                                widget.location,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month, color: Colors.black,),
                              const SizedBox(width: 10,),
                              Text(
                                '8 June 2021',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Automobili Lamborghini S.p.A. is an Italian brand and manufacturer of luxury sports cars and SUVs based in Sant\'Agata Bolognese. The company is owned by the Volkswagen Group through its subsidiary Audi.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  padding: EdgeInsets.all(13),
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.message,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'Chat',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  padding: EdgeInsets.all(13),  
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(width: 15,),
                      Text(
                        'Call',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}