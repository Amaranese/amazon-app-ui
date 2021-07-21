import 'package:flutter/material.dart';

import 'item.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AmazonApp(),
  ));
}

class AmazonApp extends StatefulWidget {
  @override
  _AmazonAppState createState() => _AmazonAppState();
}

class _AmazonAppState extends State<AmazonApp> {

  List<String> imgUrl = [
    "https://in.jbl.com/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw4a6e76c7/C150SI-black1-hero-1605x1605px.png",
    "https://purepng.com/public/uploads/large/samsung-galaxy-s10-prism-front-6bx.png",
    "https://www.mypinnacleview.com/wp-content/uploads/2017/07/macbook-pro-png.png",
    "https://static.bhphoto.com/images/images2500x2500/1574693242_1297189.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61fTX5TjAEL._UX569_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/G/31/img17/PC/sprocket/Tile-2-1._SS200_.jpg",
    "https://images-eu.ssl-images-amazon.com/images/I/51JKnkxCl7L._AC_SX184_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/710tUwxHq7L._UL1500_.jpg",
    "https://images-na.ssl-images-amazon.com/images/I/61LQQSc9fZL._UL1440_.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10161D),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF222e3D),
        title: Text(
          'Amazon',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 24,
            color: Colors.orangeAccent,
          ),
        ),
        leading: FlatButton(
          onPressed: () {},
          child: Icon(Icons.menu, color: Colors.orangeAccent),
        ),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.orangeAccent,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 27),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'Search..',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "New Items",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    item("JBL headphones", "Audio", imgUrl[0], "63.3"),
                    item("Sumsung", "Smartphones", imgUrl[1], "633.3"),
                    item("MacBook pro", "Tech", imgUrl[2], "1200.56"),
                    item("Blue yeti", "Audio", imgUrl[3], "123.3"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Recommend for you",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    item("Jacket", "Fashion", imgUrl[4], "63.3"),
                    item("IMac Pro", "Tech", imgUrl[5], "6353.63"),
                    item("Books", "Books", imgUrl[6], "12.56"),
                    item("Sunglasses", "Fashion", imgUrl[7], "6.3"),
                    item("Watch", "Fashion", imgUrl[8], "600.9"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFFFF9900),
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Contact'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account'
          ),
        ],
      ),
    );
  }
}