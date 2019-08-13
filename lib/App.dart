import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_app/Dashboard.dart';
import 'package:sample_app/People.dart';
import 'package:sample_app/Account_Details.dart';
import 'package:sample_app/SizeConfig.dart';
import 'package:sample_app/Book.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return after_login();
  }
}

class after_login extends State<Home> {
  int _cIndex = 0;
  final List<Widget> _children = [
    Dashboard(),
    Book(),
    People(),
    Account_Details()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
              },
            ),
          ],
          backgroundColor: Colors.pink,
        ),
        drawer: Drawer(),
        body:
        _children[_cIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor:Colors.pink,
          onTap: onTabTapped,
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.deepOrangeAccent,
                icon: Icon(Icons.home),
                title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.people),
                title: new Text('')),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: new Text(''))
          ],
        ),
      );
  }

  void onTabTapped(int index) {
    setState(() {
      _cIndex = index;
    });
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

