import 'package:flutter/material.dart';
import 'package:git_flutter/pages/home.dart';
import 'package:git_flutter/pages/stars.dart';
import 'package:git_flutter/pages/forks.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => Home(),
      '/stars': (context) => Stars(),
      '/forks': (context) => Forks(),
    }
));