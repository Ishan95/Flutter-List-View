import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'List View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            ListTile(
              leading: Icon(Icons.brightness_auto),
              title: Text('Brightness Auto'),
              subtitle: Text('Change the Brightness'),
              trailing: Icon(Icons.menu),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('Change Image'),
              subtitle: Text('Change the Image'),
              trailing: Icon(Icons.menu),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.keyboard),
              title: Text('Keyboard Layout'),
              subtitle: Text('Change the Keyboard Layout'),
              trailing: Icon(Icons.menu),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Ring Option'),
              subtitle: Text('Change the Ring Option'),
              trailing: Icon(Icons.menu),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.build),
              title: Text('Settings'),
              subtitle: Text('Change Settings'),
              trailing: Icon(Icons.menu),
            ),
            ListTile(
              leading: Icon(Icons.nature_people),
              title: Text('Near'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.backup),
              title: Text('Backups'),
            ),
          ],
        ),
      ),
    );
  }
}
