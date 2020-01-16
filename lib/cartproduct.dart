import 'package:flutter/material.dart';

class Cartprpduct extends StatefulWidget {
  @override
  _CartprpductState createState() => _CartprpductState();
}

class _CartprpductState extends State<Cartprpduct> {
  var productlist=[
    {
    "productname":"plazer",
    "picture":"images/product/blazer1.jpeg",
    "price":"80 SAR",
    "size":"m",
   "color":"red",
   "quntity":"5"

  },
  {
    "productname":"plazer2",
    "picture":"images/product/blazer2.jpeg",
    "price":"80 SAR",
    "size":"m",
   "color":"red",
   "quntity":"5"

  }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: productlist.length,
      itemBuilder:(context,index){
        return SingleProductcard(
          proname: productlist[index]["productname"],
          pic: productlist[index]["picture"],
          price: productlist[index]["price"],
          size: productlist[index]["size"],
          color: productlist[index]["color"],
          qun: productlist[index]["quntity"],
        );

      },
      
    );
  }
}
class SingleProductcard extends StatelessWidget {
  final  proname;
  final pic;
  final price;
  final size;
  final qun;
  final color;
  SingleProductcard({
    this.proname,this.pic,this.color,this.price,this.qun,this.size
  });

  @override
  Widget build(BuildContext context) {
    return Card(child: new ListTile(
      title: new Text(proname) ,
      subtitle: new Column(
        children: <Widget>[
         new Row(
           children: <Widget>[
             Padding(padding: const EdgeInsets.all(3.0),child: new Text('Size:'),),
                Padding(padding: const EdgeInsets.all(3.0),child: new Text(size),),
                Padding(padding: const EdgeInsets.fromLTRB(8.0, 5.0, 5.0, 5.0),child: new Text('Qun:'),),
                 Padding(padding: const EdgeInsets.all(3.0),child: new Text(qun),),
                 Padding(padding: const EdgeInsets.all(3.0),child: new Text('Color:'),),
                 Padding(padding: const EdgeInsets.all(3.0),child: new Text(color),),
                  Padding(padding: const EdgeInsets.all(3.0),child: new Text('Price:'),),
                     Padding(padding: const EdgeInsets.all(3.0),child: new Text(price),),


              

           ],
         ),
        ],
      ),
    ),

      
    );
  }
}