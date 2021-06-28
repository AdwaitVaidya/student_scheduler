import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InitialStartup {}

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(left: 5, right: 5, top: 3, bottom: 3),
          children: [
            DrawerHeader(
                child: Column(
              children: [
                Expanded(
                  child: Text(
                    "Adwait Vaidya",
                    style: TextStyle(fontSize: 12),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Text(
                    "+91 922 564 14341",
                    style: TextStyle(fontSize: 12),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Text(
                    "9082183451",
                    style: TextStyle(fontSize: 12),
                  ),
                  flex: 1,
                ),
                Expanded(
                  child: Text(
                    "vaidya3@wisc.edu",
                    style: TextStyle(fontSize: 12),
                  ),
                  flex: 1,
                )
              ],
            )),
            ListTile(
              title: Text("My Courses"),
              onTap: () {},
            ),
            ListTile(
              title: Text("My Assignments"),
              onTap: () {},
              onLongPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}
