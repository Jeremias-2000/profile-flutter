
import 'package:avaliacao1/controller/app_controller.dart';
import 'package:avaliacao1/screens/home_page.dart';
import 'package:avaliacao1/screens/not_found.dart';

import 'package:flutter/material.dart';





class AppWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
       builder: (context,child){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.green,
          brightness: AppController.instance.isDarkTheme ? Brightness.dark: Brightness.light),
         
        initialRoute: "/home",
        routes: {
          '/home': (context) => HomePage(),
          '/notfound': (context) => NotFoundPage(),
        },
         
          
          
          
        );  
       }
    );
  }

}