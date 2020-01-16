import 'package:flutter/material.dart';
import 'croser.dart';
import 'horizional.dart';
import 'products.dart';
import 'cart.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
  
}
class HomePage extends StatefulWidget {
    @override
    _HomePageState createState() => _HomePageState();
  }
  
  class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          title: new Text('Fashion App'),
          backgroundColor: Colors.red,
         actions: <Widget>[
           new IconButton(icon:Icon(Icons.search),color: Colors.white,onPressed: (){},),
           new IconButton(icon: Icon(Icons.shopping_cart),color: Colors.white,onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
           },),
         ],
        ),
        drawer: new Drawer(
          
          child: new ListView(
          
            children: <Widget>[
              new UserAccountsDrawerHeader(
             
                accountName: new Text('Ibrahim Omar'),
                accountEmail: new Text('HemaOmar@email.com'),
                currentAccountPicture: GestureDetector(child: new CircleAvatar(

                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
                
                ),
                decoration:BoxDecoration(
                  color: Colors.red
                ),
              ),
              InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text('Home'),
                  leading: new Icon(Icons.home,color: Colors.cyan,),
                ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text('My Account'),
                  leading: new Icon(Icons.person,color: Colors.purple,),
                ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text('My Orders'),
                  leading: new Icon(Icons.shopping_basket,color: Colors.black,),
                ),
              ),
               InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                child: ListTile(
                  title: new Text('Shoping'),
                  leading: new Icon(Icons.shopping_basket,color:Colors.red,),
                ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text('Favourites'),
                  leading: new Icon(Icons.favorite,color: Colors.lime,),
                ),
              ),
              Divider(),
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text('Setting'),
                  leading: new Icon(Icons.settings,color: Colors.blue,),
                ),
              ),
               InkWell(
                onTap: (){},
                child: ListTile(
                  title: new Text('Help'),
                  leading: new Icon(Icons.help,color: Colors.green,),
                ),
              ),

            ],
          ),
          
    
          
            
         
          
          ),
          body: new ListView(
           children: <Widget>[
             carousel,
              new Padding(padding: const EdgeInsets.all(4.0),
              child:new Text('Categoris',style: TextStyle(color: Colors.black),) ,
              ),
              Horizionallistv(),
              new Padding(padding: const EdgeInsets.all(4.0),
              child: new Text('Recent Product'),
              
              ),
              new Container(
                
                height: 320.0,
                child: Products(),
              )

           ],
           
          ),
        );
  
    }
  }

