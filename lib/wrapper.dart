import 'package:flutter/material.dart';
import 'package:brewcrew/Model/user.dart';
import 'package:brewcrew/Authenticate/authenticate.dart';
import 'package:brewcrew/Home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    // return either the Home or Authenticate widget
    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }

  }
}