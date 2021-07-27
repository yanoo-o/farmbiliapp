import 'package:farmbili_2/main.dart';
import 'package:flutter/material.dart';
import 'package:farmbili_2/market.dart';
import 'package:farmbili_2/Widgets/widget.dart';
import 'package:farmbili_2/Widgets/search.dart';



void main() => runApp(new FarmBili());

class FarmBili extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Farm Bili Market',
      theme: new ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Market(),
    );
  }
}
class Market extends StatefulWidget {
  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome to FarmBili!"),
        backgroundColor: Colors.lightGreen,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,

            ),
            onPressed: (){
            },
          ),
          ],
        ),
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height:20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(' What would you like to buy?', style: TextStyle(
                color: Color(0xFF3a3737),
                fontSize: 25,
                fontWeight: FontWeight.w500,),
              ),
            ),
            SizedBox(height:10),
            SearchWidget(),
            SizedBox(height:10),
            Container(
              height:200.0,
              width: 500.0,
              child:Align(
                alignment: Alignment(-0.9, 0.8),
                child: Text(
                'Promos & Vouchers',
                style: TextStyle(
                  fontSize: 20, color: Colors.white,
                ),
              ),
              ),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                image: DecorationImage(
                  image: AssetImage('assets/images/promo.png'),
                  fit: BoxFit.contain,
                  alignment: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(10),
              )
            ),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
              Container(
                height: 200.0,
                width: 250.0,
                  child:Align(
                    alignment: Alignment(-0.9, 0.8),
                    child: Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 20, color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    image: DecorationImage(
                      image: AssetImage('assets/images/veggies.png'),
                      scale: 0.8,
                      alignment: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  )
              ),
                Container(
                    height: 200.0,
                    width: 250.0,
                    child:Align(
                      alignment: Alignment(-0.9, 0.8),
                      child: Text(
                        'Pick-Up',
                        style: TextStyle(
                          fontSize: 20, color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      image: DecorationImage(
                        image: AssetImage('assets/images/market.png'),
                        scale: 0.4,
                        alignment: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    )
                )
            ]
            ),
            SizedBox(height:30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('  Your Shops', style: TextStyle(
                color: Color(0xFF3a3737),
                fontSize: 20,
                fontWeight: FontWeight.bold,),
              ),
            ),
            SizedBox(height:10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 175.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/bg.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Align(
                        alignment: Alignment(-0.8, 0.9),
                        child: Text(
                          'Dela Cruz Farm',
                          style: TextStyle(
                            fontSize: 15, color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(width:10),
                    Container(
                      height: 175.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/commonwealth.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Align(
                        alignment: Alignment(-0.8, 0.9),
                        child: Text(
                          'Antipolo Farm',
                          style: TextStyle(
                            fontSize: 15, color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(width:10),
                    Container(
                      height: 175.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/bg.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Align(
                        alignment: Alignment(-0.8, 0.9),
                        child: Text(
                          'Commonwealth Market',
                          style: TextStyle(
                            fontSize: 15, color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(width:10),
                    Container(
                      height: 175.0,
                      width: 250.0,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        image: new DecorationImage(
                          image: new AssetImage('assets/images/commonwealth.png'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Align(
                        alignment: Alignment(-0.8, 0.9),
                        child: Text(
                          'Balintawak Market',
                          style: TextStyle(
                            fontSize: 15, color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ),
                  ]

              ),
            ),

          ]
        )
      ),
    );
  }
}


