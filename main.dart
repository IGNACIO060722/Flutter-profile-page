import 'package:flutter/material.dart';

void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile App',
      theme:  ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar:  AppBar(
        title:  Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  border: Border.all(
                    color: Colors.red,
                    width: 4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
                child: ClipOval(
                  child: Image.network('https://lh3.googleusercontent.com/a/ACg8ocI5qG83R0P_ZnPXbazeWhveIay6Em3JWQox-W9eTiZVV1AHatk=s288-c-no',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,),
                ),
              ),

              SizedBox(height: 20),
              Text('IGNACIO JERICHO E.',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ) ,
              ),

              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 3)
                      )
                    ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ABOUT ME',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                      ),
                    ),
                    SizedBox(height: 10),
                    Text('Seven billion people are on this Earth, and everybody is different from the rest of others. There is nothing without purpose in this world. Everything has some purpose. Humans are the best creation, and each person is exclusive. Thus, writing about myself, I’m here to express myself that what I see, what I experience and what I plan for my life. I try myself to be modest, passionate, devoted, hardworking and honest.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                        height: 1.5,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              )

            ],
          )
      ),
    );

  }
}
