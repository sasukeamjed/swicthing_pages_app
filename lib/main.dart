import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TestProject'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Text'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Text'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Text'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Text'
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: TabBar(
              controller: _controller,
              tabs: [
                Tab(
                  icon: Icon(Icons.supervised_user_circle),
                  text: 'Admin',
                ),
                Tab(
                  icon: Icon(Icons.person_add),
                  text: 'Shop Owner',
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            child: TabBarView(
              controller: _controller,
              children: <Widget>[
                Card(
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: TextField(
                      decoration: InputDecoration(hintText: 'Search for address...'),
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text('Latitude: 48.09342\nLongitude: 11.23403'),
                    trailing: IconButton(icon: Icon(Icons.my_location), onPressed: () {}),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Some more information'),
            ),
          ),
          RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {},
            child: Text(
              'Search for POIs',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}