
import 'package:flutter/material.dart';

void main() {
  runApp(MiaApplicazione());
}

class MiaApplicazione extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MiniApp(),
    );
  }
}

class MiniApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final title = 'AppMcdo';

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/tuxedo.png',
                    ),
                    fit: BoxFit.contain,
                  )
              ),),
          ),
        ],
        backgroundColor: Colors.grey[100],
        leading: Icon(Icons.menu, color: Colors.black),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Text(
                    "SEARCH FOR  \nRECIPES",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3, vertical: 0),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(241, 241, 241, 1),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.search, size: 25.0, color: Colors.grey),
                    title: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                      ),
                    ),
                  )
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 210.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 233, 198,1),
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: new Image.asset("assets/burger.png"),
                            height: 85,
                            width: 85,
                            padding: new EdgeInsets.all(16.0),
                            decoration:new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Hamburg \n \$21",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue[100],
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/fries.png"),
                            height: 85,
                            width: 85,
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Chips \n \$15",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 150.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset("assets/taco.png"),
                            height: 85,
                            width: 85,
                            padding: EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Taco \n \$12",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "FEATURED",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "COMBO",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "FAVORITES",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "RECOMMENDED",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              height: 150,
              child: ListView(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[
                                Container(
                                  height: 60,
                                  width: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset("assets/hotdog.png"),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                                    color: Color.fromRGBO(255, 227, 223, 1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text(
                                        "Delicious hot dog",
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("\$6 ",
                                            style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(" \$18",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.add, size: 20.0, color: Colors.white),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[
                                Container(
                                  height: 60,
                                  width: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset("assets/pizza.png"),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                                    color: Color.fromRGBO(255, 227, 223, 1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text(
                                        "Pizza Mamma Mia",
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("\$5 ",
                                            style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(" \$18",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                              ]
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.add, size: 20.0, color: Colors.white),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[
                                Container(
                                  height: 60,
                                  width: 70,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset("assets/sandwich.png"),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                                    color: Color.fromRGBO(255, 227, 223, 1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text(
                                        "Wow sandwich",
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("\$4",
                                            style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(" \$18",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],

                                  ),

                                ),
                              ]
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.add, size: 20.0, color: Colors.white),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child:Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children:[
                                Container(
                                  height: 60,
                                  width: 75,
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Image.asset("assets/popcorn.png"),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(14.0)),
                                    color: Color.fromRGBO(255, 227, 223, 1),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Text(
                                        "Delicious pop corn",
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                          Icon(Icons.star, size: 20.0, color: Colors.yellow),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("\$3 ",
                                            style: TextStyle(
                                              color: Colors.redAccent,
                                              fontSize: 18,
                                            ),
                                          ),
                                          Text(" \$18",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              decoration: TextDecoration.lineThrough,
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],

                                  ),

                                ),
                              ]
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Icon(Icons.add, size: 20.0, color: Colors.white),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


