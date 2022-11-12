import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
       physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1; i<10; i++)
        Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white
              ),
              child: Column(
                children: [
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20), 
                           color: Color(0xFF4C53A5),
                        ),
                        child: Text("-50%", style: TextStyle(
                          fontSize: 14 , 
                          color: Colors.white,
                        fontWeight: FontWeight.bold,

                        ),),
                      ),
                      Icon(Icons.favorite_border , 
                      color: Colors.red,)
                    ],
                  ),

                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Container(
                      margin: EdgeInsets.only(left:10 , right: 10),
                      child: Image.asset("assets/images/$i.png" , 
                      height: 110, 
                      width: 110,),
                    ),
                  ), 
                  Container(
                    padding: EdgeInsets.only(bottom:2),
                    alignment: Alignment.centerLeft,
                    child: Text(  
                      "Product Title", 
                      style: TextStyle(
                        fontSize: 18, 
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold, 
                      ),
                    ),
                  ), 
                  Container(alignment: Alignment.centerLeft,
                    child: Text("Write description of product", 
                  style: TextStyle(
                        fontSize: 15, 
                        color: Color(0xFF4C53A5),
                  ),
                  ), 
                  ),
                  Padding(padding:  EdgeInsets.symmetric(vertical: 10), 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$55", 
                      style: TextStyle(
                        fontSize: 16, 
                        color: Color(0xFF4C53A5),
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    Icon(Icons.shopping_cart_checkout, 
                     color: Color(0xFF4C53A5),
                    ),
                    ],
                  ),)
                ],
              ),

        ),
      ],
    );
  }
}
