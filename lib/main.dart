

import 'package:animated_switcher/animated_image.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Animation_Image(),
   //  home: Basic(),
    );
  }
}
