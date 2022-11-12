import 'package:flutter/material.dart';
import 'package:shopping_app/pages/ItemPage.dart';
import 'package:shopping_app/pages/cart_page.dart';
import 'package:shopping_app/pages/home_page.dart';

void main() =>runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, 
      ),
      routes:{
        "/":(context) => HomePage(),
         "cartPage":(context) => CartPage(),
           "itemPage":(context) => ItemPage(),
      }

      
    );
  }
}