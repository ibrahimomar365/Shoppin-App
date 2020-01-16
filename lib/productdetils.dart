import 'package:flutter/material.dart';


class Productdet extends StatefulWidget {
  final proddname;
  final proddpic;
  final proddprice;
  final proddoldprice;

  Productdet({
this.proddname,this.proddpic,this.proddoldprice,this.proddprice
  });
  @override
  _ProductdetState createState() => _ProductdetState();
}

class _ProductdetState extends State<Productdet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          title: new Center(child: new Text('Fashion App'),),
          backgroundColor: Colors.red,
         actions: <Widget>[
           new IconButton(icon:Icon(Icons.search),color: Colors.white,onPressed: (){},),
          
         ],
        ),
        body: new ListView(
           children: <Widget>[
             new Container(
               height: 300.0,
               child: GridTile(
                 child: new Container(
                   color: Colors.white,
                   child: Image.asset(widget.proddpic),
                 ),
                 footer: new Container(
                   color: Colors.white70,
                   child:ListTile(
                     leading: new Text(widget.proddname,
                     style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red,fontSize:16.0),
                     ),
                     title: new Row(
                       children: <Widget>[
                         Expanded(
                          child: new Text("${widget.proddoldprice}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0,decoration: TextDecoration.lineThrough),),
                         ),
                         Expanded(
                           child: new Text("${widget.proddprice}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                         ),
                       ],
                     ),
                     
                   ),

                 ),
               ),
             ),
             new Row(
               children: <Widget>[
                 Expanded(
                   child:MaterialButton(
                     onPressed: (){
                       showDialog(context: context,
                       builder:(context){
                        return new AlertDialog(
                           title: new Text("Size"),
                           content: new Text('choose the size'),
                           actions: <Widget>[
                             new MaterialButton(
                               child: new Text('Close'),
                               onPressed: (){
                                 Navigator.of(context).pop(context);
                               },
                             ),
                           ],
                         );

                       });
                     },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 2.0,
                    child: new Row(
                      children: <Widget>[
                        Expanded(child: new Text("size"),),
                        Expanded(child: new Icon(Icons.arrow_drop_down),)

                      ],
                    ),
                   ),
                 ),
                   Expanded(
                   child:MaterialButton(
                     onPressed: (){
                       showDialog(context: context,
                       builder: (context){
                         return AlertDialog(
                           title: new Text('Colors'),
                           content: new Text('Chose Color'),
                           actions: <Widget>[
                             new MaterialButton(
                               child: new Text('Close'),
                               onPressed: (){
                                 Navigator.of(context).pop(context);
                               },
                             ),
                           ],
                         );

                       }
                       );
                     },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 2.0,
                    child: new Row(
                      children: <Widget>[
                        Expanded(child: new Text("Color"),),
                        Expanded(child: new Icon(Icons.arrow_drop_down),)

                      ],
                    ),
                   ),
                 ),
                   Expanded(
                   child:MaterialButton(
                     onPressed: (){
                       showDialog(context: context,
                       builder: (context){
                        return new AlertDialog(
                           title: new Text("Quntity"),
                           content: new Text("Choose Quntity"),
                           actions: <Widget>[
                            MaterialButton(
                              child: new Text('Close'),
                              onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                            )
                           ],
                         );
                       }
                       );
                     },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 2.0,
                    child: new Row(
                      children: <Widget>[
                        Expanded(child: new Text("Qty"),),
                        Expanded(child: new Icon(Icons.arrow_drop_down),)

                      ],
                    ),
                   ),
                 ),
                 
               ],
             ),
             new Row(
               children: <Widget>[
                  Expanded(
                   child:MaterialButton(
                     onPressed: (){},
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 2.0,
                    child: new Text("Buy Now"),
                    
                   ),
                 ),
                 new IconButton(icon:Icon(Icons.add_shopping_cart,color: Colors.red,),onPressed: (){},),
                 new IconButton(icon: Icon(Icons.favorite_border,color: Colors.purple,),onPressed: (){},)
               ],
             ),
             Divider(),
             new ListTile(
               title: new Text('Product Details',style: TextStyle(fontSize: 16.0),),
               subtitle: new Text("  Text messages are used for personal, family, business and social purposes. Governmental and non-governmental organizations use text messaging for communication between colleagues. In the 2010s, the sending of short informal messages has become an accepted part of many cultures, as happened earlier with emailing.[1] This makes texting a quick and easy way to communicate with friends, family and colleagues, including in contexts where a call would be impolite or inappropriate (e.g., calling very late at night or when one knows the other person is busy with family or work activities). Like e-mail and voicemail and unlike calls (in which the caller hopes to speak directly with the recipient), texting does not require the caller and recipient to both be free at the same moment; this "),
            
             ),
             Divider(),
            new Row(
              children: <Widget>[
                 new Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
             child: new Text("Product name"),
             ),
             Padding(padding: const EdgeInsets.all(5.0),child: new Text(widget.proddname,style:TextStyle(fontWeight: FontWeight.bold),))
              ],
            ),
               new Row(
              children: <Widget>[
                 new Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
             child: new Text("Product brand"),
             ),
             Padding(padding: const EdgeInsets.all(5.0),child: new Text('brand x',style:TextStyle(fontWeight: FontWeight.bold)),)
              ],
            ),
               new Row(
              children: <Widget>[
                 new Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
             child: new Text("Product condition"),
             ),
             Padding(padding: const EdgeInsets.all(5.0),child: new Text('New Product',style:TextStyle(fontWeight: FontWeight.bold)),)
              ],
            ),
             Divider(color: Colors.amber,), 
            
           ],
        ),
      
    );
  }
}