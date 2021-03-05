import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var iconColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("League of Legends : Wild Rift",
              style: TextStyle(color: Colors.blue)),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.blue),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                        flex: 10,
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Image(
                            image: AssetImage("assets/1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Flexible(
                      flex: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/2.jpg")),
                                  borderRadius: BorderRadius.circular(10)),
                              width: 200,
                              height: 100,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/3.jpg")),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 200,
                              height: 100,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/4.jpg")),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 200,
                              height: 100,
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/5.jpg")),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              width: 200,
                              height: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        child: Text(
                          "Wild Rift", style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ListView(
                        children: <Widget>[
                          Container(
                            child: RichText(
                              text: TextSpan(
                                text: "League of Legends: Wild Rift (abbreviated LoL: WR or simply Wild Rift) is a multiplayer online battle arena mobile game developed and published by Riot Games for Android and iOS. The game is a modified version of the PC game League of Legends"
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ListView(
                        children: <Widget>[
                          Container(
                            child: RichText(
                              text: TextSpan(
                                text: "League of Legends: Wild Rift is a multiplayer online battle arena (MOBA) game in the three-dimensional isometric perspective. Players compete in matches, lasting anywhere from 15 to 20 minutes on average. Teams work together to destroy a structure called the Nexus in the enemy team's base, bypassing a line of defensive structures called turrets."
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: ListView(
                        children: <Widget>[
                          Container(
                            child: RichText(
                              text: TextSpan(
                                text: "League of Legends: Wild Rift was set to be released in 2020, with a limited alpha launch in Brazil and Philippines in June 2020. On September 16, 2020, Wild Rift was released in closed beta in Southeast Asia via Google Play and Apple's TestFlight, with more regions to be added at a later date. On October 8, 2020, the closed beta returned, adding South Korea and Japan. The regional open beta for Southeast Asia began on October 27, 2020. On December 7, 2020, the beta was expanded to include Vietnam, Oceania, and Taiwan. On December 10, 2020, the open beta was expanded ahead of schedule to include the Commonwealth of Independent States, Europe, Middle East, and Turkey; the game's official release date is still unknown."
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
            Align(
              alignment: Alignment(0.95, 0.9),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (iconColor == Colors.black) {
                      iconColor = Color(0xFFFF0000);
                    } else if (iconColor == Color(0xFFFF0000)) {
                      iconColor = Colors.black;
                    }
                  });
                },
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.favorite,
                  color: iconColor,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
