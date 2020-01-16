import 'package:flutter/material.dart';
import 'productdetils.dart';

class Products extends StatefulWidget {

  
  @override
  _ProductsState createState() => _ProductsState();
}

  class _ProductsState extends State<Products> {
  

    var productlist=[
  {
    "productname":"plazer",
    "picture":"images/product/blazer1.jpeg",
    "price":"80 SAR",
    "oldprice":"100 SAR"

  },
  {
    "productname":"plazer2",
    "picture":"images/product/blazer2.jpeg",
    "price":"80 SAR",
    "oldprice":"100 SAR"

  },
   {
    "productname":"Dress",
    "picture":"images/product/dress2.jpeg",
    "price":"80 SAR",
    "oldprice":"100 SAR"

  },
   {
    "productname":"Dress2",
    "picture":"images/product/dress1.jpeg",
    "price":"80 SAR",
    "oldprice":"100 SAR"

  },
   {
    "productname":"Hills",
    "picture":"images/product/hills1.jpeg",
    "price":"80 SAR",
    "oldprice":"100 SAR"

  },
   {
    "productname":"Hills2",
    "picture":"images/product/hills2.jpeg",
    "price":"80 SAR",
    "oldprice":"100 SAR"

  }

    ];
    @override
    Widget build(BuildContext context) {
      return GridView.builder(
        
        itemCount:productlist.length ,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder:(BuildContext context,int index){
          return Singleproduct(
            prodname: productlist[index]["productname"],
            prodpic: productlist[index]["picture"],
            prodpric: productlist[index]["price"],
            prodoldpric: productlist[index]["oldprice"],
          );
        },

        
      );
    }
  }
  class Singleproduct extends StatelessWidget {
    final prodname;
    final prodpic;
    final prodpric;
    final prodoldpric;

    Singleproduct({
      this.prodname,this.prodpic,this.prodpric,this.prodoldpric
    });
    @override
    Widget build(BuildContext context) {
      return Card(
        
        child: Hero(
          tag: prodname,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                new MaterialPageRoute(builder: (context)=> new Productdet(
                  proddname: prodname,
                  proddpic: prodpic,
                  proddoldprice: prodoldpric,
                  proddprice: prodpric,
                ))),
              child:  GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(prodname,style: TextStyle(fontWeight: FontWeight.bold),),
                    title: new Text("\$$prodpric",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                    subtitle: new Text("\$$prodoldpric",style: TextStyle(color: Colors.red,decoration: TextDecoration.lineThrough,fontWeight: FontWeight.bold) ,),

                  ),
                ),
                child:Image.asset(prodpic,fit: BoxFit.cover,),
              ),
            ),
          ),
        ),
        
      );
    }
  }