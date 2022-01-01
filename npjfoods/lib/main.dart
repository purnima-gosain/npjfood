import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:menu_inline_filter/menu_inline_filter.dart';

void main() => runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'splash',
    //theme: ThemeData(textTheme: GoogleFonts.pacificoTextTheme()),
    home: new MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> categories = [
    "Combo Meal",
    "Chicken",
    "Beverages",
    "Snacks and Sides"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: //Text("Nepalgunjfood"),
            Container(
          margin: EdgeInsets.fromLTRB(0, 0, 169, 0),
          child: Image.asset(
            "assets/images/logo.png",
            height: 50,
            width: 150,

            //fit: BoxFit.cover,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.notifications_outlined,
                size: 26.0,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //decoration: new BoxDecoration(color: Colors.grey[500]),
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.fromLTRB(35, 20, 0.0, 16.0),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 18, 0.0, 0),
                              height: 80,
                              child: ClipOval(
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/restaurant.png")),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 15, 0.0, 0),
                              height: 20,
                              child: Text("Restaurant"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.fromLTRB(16, 20, 10, 16.0),
                      color: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 18, 0.0, 0),
                              height: 80,
                              child: ClipOval(
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/restaurant.png")),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0.0, 15, 0.0, 0),
                              height: 20,
                              child: Text("Restaurant"),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: SizedBox(
                height: 25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) => buildCategory(index),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                  height: 200,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Get Discount of",
                          style: TextStyle(
                            color: Colors.orange[600],
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "30%",
                          style: TextStyle(
                              color: Colors.orange[600], fontSize: 50),
                        ),
                      ),
                      Center(
                        child: Text(
                          "at Mcdonald of your first order",
                          style: TextStyle(
                              color: Colors.orange[600], fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          "& instant cashback",
                          style: TextStyle(
                              color: Colors.orange[600], fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                  height: 200,
                  width: 350,
                  child: Column(
                    children: [
                      Center(
                        child: Text("hotel image"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                  height: 200,
                  width: 350,
                  child: Column(
                    children: [
                      Center(
                        child: Text("hotel image"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                  height: 200,
                  width: 350,
                  child: Column(
                    children: [
                      Center(
                        child: Text("hotel image"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[500],
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                        BoxShadow(
                            color: Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                  height: 200,
                  width: 350,
                  child: Column(
                    children: [
                      Center(
                        child: Text("hotel image"),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[500],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "",
              backgroundColor: Colors.grey[300]),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "",
          )
        ],
        selectedItemColor: Colors.orange[300],
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedIndex == index ? Colors.black : Colors.black26,
              ),
            ),
            Container(
              alignment: Alignment(-0.4, 0.8),
              margin: EdgeInsets.fromLTRB(15.8, 0.0, 0.0, 0),
              height: 2,
              width: 30,
              color:
                  selectedIndex == index ? Colors.orange : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
