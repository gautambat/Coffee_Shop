import 'package:flutter/material.dart';
import 'package:brewcrew/wrapper.dart';
import 'package:brewcrew/Services/auth.dart';
import 'package:brewcrew/Model/user.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
