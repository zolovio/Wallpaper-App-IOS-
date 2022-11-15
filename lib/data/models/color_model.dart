import 'package:flutter/material.dart';

List<ColorModel> colorList=[
  ColorModel(color: Colors.black,name: "Black"),
  ColorModel(color: Colors.blue,name: "Blue"),
  ColorModel(color: Colors.white,name: "White"),
  ColorModel(color: Colors.blueGrey,name: "Blue Grey"),
  ColorModel(color: Colors.brown,name: "Brown"),
  ColorModel(color: Colors.cyan,name: "Cyan"),
  ColorModel(color: Colors.deepOrange,name: "Deep Orange"),
  ColorModel(color: Colors.purple,name: "Deep Purple"),
  ColorModel(color: Colors.green,name: "Green"),
  ColorModel(color: Colors.grey,name: "Grey"),
  ColorModel(color: Colors.indigo,name: "Indigo"),
  ColorModel(color: Colors.pink,name: "Pink"),
  ColorModel(color: Colors.red,name: "Red"),
  ColorModel(color: Colors.yellow,name: "Yellow"),
];

class ColorModel{
   Color? color;
   String? name;
ColorModel({required this.color,required this.name});
}