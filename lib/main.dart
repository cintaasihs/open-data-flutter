import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Data',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('OPEN-DATA'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Action when menu icon is pressed
            },
          ),
          backgroundColor: Colors.blue, // Color for AppBar
          bottom: TabBar(
            tabs: [
              Tab(
                icon: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text('W', style: TextStyle(color: Colors.white)),
                ),
                text: 'Welcome',
              ),
              Tab(
                icon: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text('?', style: TextStyle(color: Colors.white)),
                ),
                text: '?',
              ),
              Tab(
                icon: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text('A', style: TextStyle(color: Colors.white)),
                ),
                text: 'About',
              ),
            ],
            labelColor: Colors.black, // Color for selected tab text
            unselectedLabelColor: Colors.grey, // Color for unselected tab text
            indicatorColor: Colors.black, // Color for tab indicator
            indicatorWeight: 3.0, // Weight of tab indicator line
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Welcome Content')),
            Center(child: Text('Help Content')),
            Center(child: Text('About Content')),
          ],
        ),
      ),
    );
  }
}
