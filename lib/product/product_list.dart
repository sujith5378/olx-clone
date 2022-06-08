// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:olx_clone/DetailsPage.dart';

class product extends StatefulWidget {
  const product({Key? key}) : super(key: key);

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => DetailsPage(productName: 'Lamborghini', price: 'Rs: 1,00,000', location: 'Hyderabad', image: 'https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Aventador/6721/Lamborghini-Aventador-SVJ/1621849426405/front-left-side-47.jpg?tr=w-375'))));
            },
            child: Container(
              padding: EdgeInsets.all(10),
              height: 250,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://stimg.cardekho.com/images/carexteriorimages/930x620/Lamborghini/Aventador/6721/Lamborghini-Aventador-SVJ/1621849426405/front-left-side-47.jpg?tr=w-375'),
                        fit: BoxFit.contain
                      )
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Rs: 1,00,000',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  Text(
                    'Hyderabad, India',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}