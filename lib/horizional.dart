import 'package:flutter/material.dart';

class Horizionallistv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection:Axis.horizontal,
        children: <Widget>[
          Categoies(
          imglocation: 'images/cats/tshirt.png',
          imagetital: 'Tshirt',
          ),
           Categoies(
          imglocation: 'images/cats/informal.png',
          imagetital: 'InFormal',
          ),
           Categoies(
          imglocation: 'images/cats/formal.png',
          imagetital: 'Formal',
          ),
           Categoies(
          imglocation: 'images/cats/shoe.png',
          imagetital: 'Shose',
          ),
           Categoies(
          imglocation: 'images/cats/dress.png',
          imagetital: 'Dress',
          ),
           Categoies(
          imglocation: 'images/cats/accessories.png',
          imagetital: 'Accessories',
          ),
        ],

      ),
  
      
    );
  }
}

class Categoies extends StatelessWidget {
  final String imglocation;
  final String imagetital;

  Categoies({this.imglocation,this.imagetital});
  @override
  Widget build(BuildContext context) {
    return Padding(padding:const EdgeInsets.all(0.1),
    child: InkWell(
      onTap: (){},
      child:Container(
      height: 80,
        width: 100.0,
     child: ListTile(
        title: new Image.asset(imglocation),
        subtitle: new Text(imagetital,textAlign:TextAlign.center,
      ),
      ),
    ),
    ),
    );
  }
}