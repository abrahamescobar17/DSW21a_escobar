import 'package:dsw21a_escobar/pages/Chip.dart';
import 'package:dsw21a_escobar/pages/Icon.dart';
import 'package:flutter/material.dart';
import 'pages/images.dart';
import 'pages/icon.dart';
import 'pages/chip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Navigation Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Images'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text('Icon'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.touch_app),
              title: Text('Chip'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChipPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Contenido de la página principal'),
      ),
    );
  }
}
