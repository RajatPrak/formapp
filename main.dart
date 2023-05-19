import 'package:flutter/material.dart';
import 'package:yourapp/audioplayer.dart';
import 'package:yourapp/routes.dart';
import 'loginscreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    theme: ThemeData(primarySwatch: Colors.deepPurple),
    debugShowCheckedModeBanner:false,
    initialRoute: "/",
    routes: {
    "/":(context)=>LoginPage(),
     MyRoutes.homeRoute:(context)=>AudioPlayer(),
    },
  );
}
}