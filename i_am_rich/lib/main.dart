import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primaryColor: Colors.blueGrey[900],
        //accentColor: Colors.redAccent,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I AM RICH"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Image(
                  image: NetworkImage(
                      'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png'),
                ),
              ),
              Expanded(
                child: Image(
                  image: AssetImage('images/diamond.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
