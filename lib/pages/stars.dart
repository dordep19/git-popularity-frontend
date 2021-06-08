import 'package:flutter/material.dart';
import 'package:git_flutter/pages/repo.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Stars extends StatefulWidget {
  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  List<Repo> repos = [];

  Widget repoTemplate(Repo repo) {
    return Card(
        margin: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      height: 30.0,
                      width: 30.0,
                      child :Image(
                          image: NetworkImage(repo.avatarUrl)
                      )
                  ),
                  Text(
                    repo.name,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    repo.score.toString(),
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.yellow[700],
        title: Text('Star Ranks'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow[700],
        child: Text('Get'),
        onPressed: () async {
          final response = await http.get(Uri.parse('http://10.0.2.2:5000/api/stars'));
          final decoded = json.decode(response.body) as List<dynamic>;

          setState(() {
            repos = decoded.map((entry) => Repo(name: entry['name'].toString(), avatarUrl: entry['avatar'].toString(), score: entry['score'])).toList();
          });
        }
      ),
      body: Column(
        children: repos.map((repo) => repoTemplate(repo)).toList(),
      ),
    );
  }
}
