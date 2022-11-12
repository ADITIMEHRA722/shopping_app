

import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widgetes/ItemAppBar.dart';
import 'package:shopping_app/widgetes/ItemBottonNavBar.dart';

class ItemPage extends StatelessWidget {

  List<Color> clrs= [ 
Colors.red, 
Colors.blue, 
Colors.green, 
Colors.pink, 
Colors.orange, 
Colors.indigo, 
  ];
  //const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "assets/images/1.png",
              height: 200,
            ),
          ),
          Arc(
              height: 30,
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 48, bottom: 15),
                        child: Row(
                          children: [
                            Text(
                              "Product Title",
                              style: TextStyle(
                                fontSize: 28,
                                color: Color(0xFF4C53A5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5, bottom: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RatingBar.builder(
                                itemBuilder: ((context, _) => Icon(
                                      Icons.favorite,
                                      color: Color(0xFF4C53A5),
                                    )),
                                onRatingUpdate: (index) {},
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding: EdgeInsets.symmetric(
                                  horizontal: 4,
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3))
                                        ]),
                                    child: Icon(
                                      CupertinoIcons.minus,
                                      size: 18,
                                      color: Color(0xFF4C53A5),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Text("01",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xFF4C53A5),
                                        )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(0, 3))
                                        ]),
                                    child: Icon(
                                      CupertinoIcons.plus,
                                      size: 18,
                                      color: Color(0xFF4C53A5),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "A watch is a portable timepiece intended to be carried or worn by a person. It is designed to keep a consistent movement despite the motions caused by the person's activities.",
                          style: TextStyle(
                            fontSize: 17,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                      ),

                      Padding(padding: EdgeInsets.symmetric(vertical: 8), 
                      child: Row(children: [
                        Text("Size", style: TextStyle(  
                          fontSize: 18, 
                          fontWeight: FontWeight.bold, 
                           color: Color(0xFF4C53A5),

                        ),
                        ), 
                        SizedBox(width: 10,), 
                        Row(
                          children: [
                            for(int i=5; i<10; i++)
                            Container(
                              height: 30, 
                              width: 30, 
                              alignment: Alignment.center, 
                              margin: EdgeInsets.symmetric(horizontal: 5),
                             decoration: BoxDecoration(  
                               color: Colors.white,  
                               borderRadius: BorderRadius.circular(30) , 
                               boxShadow: [BoxShadow( 
                                color: Colors.grey.withOpacity(0.5), 
                                spreadRadius: 2, 
                                blurRadius: 8, 
                               )]
                             ),
                             child: Text(i.toString(), style: TextStyle(  
                              fontSize: 18, 
                              fontWeight: FontWeight.bold, 
                                 color: Color(0xFF4C53A5),
                             ),),
                              
                            )
                          ],
                        )
                      ]
                      ),
                      ),


                    Padding(padding: EdgeInsets.symmetric(vertical: 8), 
                      child: Row(children: [
                        Text("Color", style: TextStyle(  
                          fontSize: 18, 
                          fontWeight: FontWeight.bold, 
                           color: Color(0xFF4C53A5),

                        ),
                        ), 
                        SizedBox(width: 10,), 
                        Row(
                          children: [
                            for(int i=0; i<6; i++)
                            Container(
                              height: 30, 
                              width: 30, 
                              alignment: Alignment.center, 
                              margin: EdgeInsets.symmetric(horizontal: 5),
                             decoration: BoxDecoration(  
                               color: clrs[i],  
                               borderRadius: BorderRadius.circular(30) , 
                               boxShadow: [BoxShadow( 
                                color: Colors.grey.withOpacity(0.5), 
                                spreadRadius: 2, 
                                blurRadius: 8, 
                               )]
                             ),
                             
                              
                            )
                          ],
                        )
                      ]
                      ),
                      ),

                    ],
                  ),
                ),
              ))
        ],
      ),
      bottomNavigationBar: ItemBottonNavBar(),
    );
  }
}
