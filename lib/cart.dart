import 'package:flutter/material.dart';
import 'cartproduct.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: new AppBar(
          elevation: 0.1,
          title: Center(child: new Text('Fashion App'),),
          backgroundColor: Colors.red,
         actions: <Widget>[
           new IconButton(icon:Icon(Icons.search),color: Colors.white,onPressed: (){},),
         
         ],
        ),
        bottomNavigationBar: new Container(
          color: Colors.white,
          child: new Row(
            children: <Widget>[
            Expanded(child: new ListTile(
              title: new Text('Total',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: new Text("\$500"),
            ),),
            Expanded(
              child: new MaterialButton(
                color: Colors.red,
                child: new Text('Chek Out'),
                onPressed: (){

                },

              ),
            ),
            ],
          ),
        ),
        
        body: Cartprpduct(),
      
    );
  }
}