import 'package:flutter/material.dart'; 

class CardBottomNavBar extends StatelessWidget {
  const CardBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 5), 
        height: 100, 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total :" , 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 22, 
                color:  Color(0xFF4C53A5), 
               ),
               
            ), 

             Text("\$250" , 
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 25, 
                color:  Color(0xFF4C53A5), 
               ),
             )
            ],
          ), 
          Container(
             alignment: Alignment.center,
            height: 50, 
           width: double.infinity,
          decoration: BoxDecoration(  
            color:  Color(0xFF4C53A5),
            borderRadius: BorderRadius.circular(20),
            
          ),
          child:  Text("Check Out", style: TextStyle(  
            color: Colors.white , 
            fontSize: 18, 
            fontWeight: FontWeight.bold,
          ),),
          )
        ]),
      ),
    );
  }
}