import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:olx_clone/product/product_list.dart';
import 'package:olx_clone/widget/banner_widget.dart';
import 'package:olx_clone/widget/catergory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title:Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding:EdgeInsets.only(top: 8,bottom: 8),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.location_solid,
                  color: Colors.black,
                  size: 20,
                ),
                Flexible(child: Text(
                  "India",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  ),
                ),
                ),
                Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,size: 18,)
              ],
            ),
          )
        )
      ),
    
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child:Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon:Icon(Icons.search,color: Colors.black,size: 20,),
                          labelText: "Find Cars,Mobiles and many more",
                          labelStyle: TextStyle(fontSize: 12),
                          contentPadding: EdgeInsets.only(left: 10,right: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1
                              )
                            )
                          )
                        ),
                      ),
                    SizedBox(width: 10,),
                    Icon(Icons.notifications_none)
                  ],
                ),
                ),
                
              SizedBox(height: 10,),
              
              Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child:Column(
                  children: [
                   BannerWidget() ,
                   
                    category()
                  ],
                ),
        ),
              // Container(height: 20, color: Colors.grey.shade300, width: MediaQuery.of(context).size.width,),
              product()        
            ],
          ),
        ),
      ),

      bottomNavigationBar: ConvexAppBar(items:
      [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.chat, title: 'Chat'),
      TabItem(icon: Icons.add, title: 'Sell'),
      TabItem(icon: Icons.heat_pump_sharp, title: 'My Ads'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ], ),
     
     ); 
    }
}
