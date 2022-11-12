import 'package:flutter/material.dart'; 

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
    scrollDirection: Axis.horizontal, 

    child: Row(
      children: [
       for(int i=1; i<11 ; i++)
      Container(margin: EdgeInsets.symmetric(
        vertical: 5, horizontal: 10, 

      ), 
      decoration: BoxDecoration(color: Colors.white, 
      borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
      
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
Image.asset(
  // use i variable to change the image 
  "assets/images/$i.png", height: 60, width: 60,),
      Text("Watch", 
      style: TextStyle(
        fontSize: 16, 
        fontWeight: FontWeight.bold, 
        color: Color(0xFF4C53A5) 
      ), ),
        ],
      ),
      ),

    ],
    ),
   );
  }
}