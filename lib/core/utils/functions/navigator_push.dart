import 'package:flutter/material.dart';

void navigatorPush(context,Widget pageName){
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return pageName;
  }));
}