import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigationapp/new_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.deepPurple),
      home: new HomePage(),
//      routes: <String, WidgetBuilder>{
//        "/a": (BuildContext context) => new NewPage("New Page"),
//      }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Drawer App"),
          elevation:
          defaultTargetPlatform == TargetPlatform.android ? 0.0 : 5.0),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Ashwin"),
              accountEmail: Text("araghunath@teksystems.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text("AR"),
              ),
            ),
            ListTile(
              title: new Text("Page one"),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (BuildContext context) => new NewPage("Page 1")));
              },
            ),
            ListTile(
              title: new Text("Page two"),
              trailing: new Icon(Icons.arrow_downward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      new MaterialPageRoute(builder: (BuildContext context) => new NewPage("Page 2")));
                }
            ),
            Divider(),
            ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }
}
