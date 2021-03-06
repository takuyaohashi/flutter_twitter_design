import 'package:flutter/material.dart';
import 'package:flutter_twitter_design/ui/home.dart';
import 'package:flutter_twitter_design/ui/search.dart';
import 'package:flutter_twitter_design/ui/news.dart';
import 'package:flutter_twitter_design/ui/direct_mail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Twitter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final _widgetOptions = [
   MyHomeScreen(),
   MySearchScreen(),
   MyNewsScreen(),
   MyDirectMailScreen(),
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0.0,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.new_releases), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.email), title: Text('')),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
   setState(() {
     _selectedIndex = index;
   });
 }
}
