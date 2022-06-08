import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({Key? key}) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        child: Column(
          children:[
            Row(
              children: [
                Expanded(child: Text("Browse Categories")),
                TextButton(onPressed: () {}, child: Row(
                  children: [
                    Text("See all",style: TextStyle(color: Colors.black),),
                    Icon(Icons.keyboard_arrow_right_outlined,color: Colors.black)
                  ],
                ))
              ],
            ),
          
           Expanded(
             child: ListView.builder(
               itemCount: 6,
               scrollDirection: Axis.horizontal,
               itemBuilder: (BuildContext context, int index) {
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                     width: 100,
                     height: 100,
                     child: Column(
                       children: [
                         Image.network("https://s3.envato.com/files/4a64ff8b-641a-4029-919c-842274b92821/inline_image_preview.jpg",
                         fit: BoxFit.fitHeight,),
                        Text("Auto"),
                       ],
                     ),
                   ),
                 );
             }) ,)
          ]
        ),
      ),
    );
  }
}