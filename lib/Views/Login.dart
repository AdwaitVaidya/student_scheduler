import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student_scheduler/Models/User.dart';

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {},
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
  int _currentTabIndex = 0;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailIDController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView(
        children: [
          TextField(
            controller: firstNameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your first name'),
          ),
          TextField(
            controller: lastNameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter your last name'),
          ),
          TextField(
            controller: emailIDController,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter your email'),
          ),
          InkWell(
            child: Text("Submit"),
            onTap: () {
              CurrentUser currentUser = new CurrentUser(
                  firstNameController.text,
                  lastNameController.text,
                  emailIDController.text);
            },
          )
        ],
      )),
    );
  }
}
