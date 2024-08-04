import 'package:flutter/material.dart';
import 'package:lab8_realtime_chat_app/models/userprofile.dart';
import 'package:lab8_realtime_chat_app/pages/chatpage.dart';
import 'package:lab8_realtime_chat_app/pages/homepage.dart';
import 'package:lab8_realtime_chat_app/pages/loginpage.dart';
import 'package:lab8_realtime_chat_app/pages/registerpage.dart';
import 'package:path/path.dart';

class NavigationService {
  late GlobalKey<NavigatorState> _navigatorKey;

  final Map<String, Widget Function(BuildContext)> _routes = {
    "/login": (context) => LoginPage(),
    "/home": (context) => Homepage(),
    "/register": (context) => RegisterPage(),
  };

  GlobalKey<NavigatorState>? get navigatorKey {
    return _navigatorKey;
  }

  Map<String, Widget Function(BuildContext)> get routes {
    return _routes;
  }

  NavigationService(){
    _navigatorKey = GlobalKey<NavigatorState>();
  }

  void pushNamed(String routeName){
    _navigatorKey.currentState?.pushNamed(routeName);
  }

  void pushReplacementNamed(String routeName){
    _navigatorKey.currentState?.pushReplacementNamed(routeName);
  }

  void push(MaterialPageRoute route){
    _navigatorKey.currentState?.push(route);
  }

  void goBack(){
    _navigatorKey.currentState?.pop();
  }
}