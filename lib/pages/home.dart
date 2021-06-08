import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Center(
          child: Text(
            'Github Ranks',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          )),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 400.0,
                width: 400.0,
                child: Image(
                    image: AssetImage('assets/git_logo.jpg')
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: FloatingActionButton(
                      heroTag: 'starsButton',
                      backgroundColor: Colors.grey[100],
                      onPressed: () {
                        Navigator.pushNamed(context, '/stars');
                      },
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        child: Image(
                          image: AssetImage('assets/star_logo.jpg')
                        )
                      )
                    )
                  ),
                  Container(
                    child: FloatingActionButton(
                      heroTag: 'ForksButton',
                      backgroundColor: Colors.grey[100],
                      onPressed: () {
                        Navigator.pushNamed(context, '/forks');
                      },
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        child: Image(
                          image: AssetImage('assets/fork_logo.jpg'),
                        )
                      )
                    ),
                  )
                ]
              )
        ]
        )
      ),
    );
  }
}
