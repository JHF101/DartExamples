import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));//use google materials design feature

//stateless widgets cannot change their values//makes code more reusable
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        children: <Widget>[
          Expanded(
              child: Image.asset('assets/1.jpg'),
            flex: 3,
          ),
          Expanded(
            flex: 1,  //higher the flex, the portion of the width we want it to take up
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pink,
              child: Text('3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

//Text('Hey bro'), //always good practice to put a comma after properties -specifies what is going to be on the home screen
//scaffold is the general layout of the applications

//Text(
//'hello',
//style: TextStyle(
//fontSize: 20.0,
//fontWeight: FontWeight.bold,
//letterSpacing: 2.0,
//color: Colors.grey[600],
//fontFamily: 'IndieFlower'
//),
//),
//)

//image:  AssetImage('assets/2.jpg'),
////NetworkImage(''),
//Image.asset('assets/1.jpg'), //same applies for image.network

//Icon(
//Icons.airport_shuttle,
//color: Colors.lightBlue,
//size: 50.0,
//),

//FlatButton(
//onPressed: () {
//print('you clicked me');
//},
//child: Text(
//'Click me'
//),
//color: Colors.lightBlue,
//),

//
//RaisedButton.icon(
//onPressed: () {},
//icon: Icon(Icons.mail),
//label: Text('mail me'),
//color: Colors.amber,
//)

//
//IconButton(
//onPressed: () {
//print('You clicked me');
//},
//icon: Icon(Icons.alternate_email),
//color: Colors.amber,
//),

//
//Container(
//padding: EdgeInsets.all(40.0),
////EdgeInsets.symmetric(horizontal: 30.0, vertical:30.0 ),
////EdgeInsets.fromLTRB(10.0, 30.0, 40.0, 50.0),
//margin: EdgeInsets.all(30),
//color: Colors.grey[400],
//child: Text('hello'),

//Padding(
//padding: EdgeInsets.all(30.0),
//child:Text('hello'),
//),

//
//Row(
//mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//crossAxisAlignment: CrossAxisAlignment.start,
//children: <Widget>[
//Text('hello world'),
//FlatButton(
//onPressed: () {},
//color: Colors.amber,
//child: Text('Click me'),
//),
//Container(
//color: Colors.cyan,
//padding: EdgeInsets.all(30.0),
//child: Text('Inside Constainer'),
//),
//],
//),

//body: Column(
////works the same as a row just switches axes
//mainAxisAlignment: MainAxisAlignment.end,
//crossAxisAlignment: CrossAxisAlignment.center,
//children: <Widget>[
//          Row(
//            children: <Widget>[
//              Text('hello'),
//              Text('world'),
//            ],
//          ),
//action menu
//Container(
//child: Padding(
//padding: const EdgeInsets.all(8.0),
//child: Container(
//padding: EdgeInsets.all(30.0),
//color: Colors.red,
//child: Text('Two'),
//),
//),
//),
//Container(
//padding: EdgeInsets.all(20.0),
//color: Colors.cyan,
//child: Padding(
//padding: const EdgeInsets.all(8.0),
//child: Text('One'),
//),
//),
//Container(
//padding: EdgeInsets.all(40.0),
//color: Colors.grey,
//child: Text('Three'),
//),
//],
//),

//body: Column(
////works the same as a row just switches axes
//mainAxisAlignment: MainAxisAlignment.end,
//crossAxisAlignment: CrossAxisAlignment.end,
//children: <Widget>[
//Row(
//children: <Widget>[
//Text('hello'),
//Text('world'),
//],
//),
//
//Container(
//padding: EdgeInsets.all(20.0),
//color: Colors.cyan,
//child: Text('One'),
//),
//Container(
//padding: EdgeInsets.all(30.0),
//color: Colors.red,
//child: Text('Two'),
//),
//Container(
//padding: EdgeInsets.all(40.0),
//color: Colors.grey,
//child: Text('Three'),
//),
//],
//),