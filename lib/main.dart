import 'package:flutter/material.dart';
import 'package:liberui/size_config.dart';

void main() {
  runApp( MaterialApp(
      home:MyApp(),
    theme: ThemeData(
      textTheme: TextTheme(
        title: TextStyle(
          fontFamily: "Nunito"
        ),
        headline: TextStyle(
          fontFamily: "Nunito",
          fontSize: SizeConfig.textMultiplier*0.8

        )
      )
    ),
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Furniture App',
              home: RestaurantScreen(),
            );
          },
        );
      },
    );
  }
}
class RestaurantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Text("XYZ")
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.list),title: Text('Current Order',style:Theme.of(context).textTheme.headline,),),
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Go to Home',style:Theme.of(context).textTheme.headline),),
          BottomNavigationBarItem(icon: Icon(Icons.note),title: Text('Past Order',style:Theme.of(context).textTheme.headline),)
        ]),
      ),
    );
  }
}
