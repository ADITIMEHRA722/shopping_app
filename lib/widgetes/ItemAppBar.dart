

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
padding: EdgeInsets.all(25.0),
child:Row(children: [
 InkWell(
  onTap: (){
    Navigator.pop(context);
  },
  child: Icon(
    Icons.arrow_back, 
    size: 30, 
    color:  Color(0xFF4C53A5),
    ),
    
 ),
 Padding(padding: EdgeInsets.only(left: 20), 
 child: Text("Peoduct", 
 style: TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 23, 
    color:  Color(0xFF4C53A5),),
    ),
    ),
    Spacer(), 
    Icon(Icons.favorite, 
    size: 30, 
    color: Colors.red,)
],
),
    );
  }
}