import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_classifiedappclone/Constants/constants.dart';
import 'package:flutter_classifiedappclone/UI/Widgets/splash_screen.dart';
import 'package:flutter_classifiedappclone/UI/main_ui.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Classified App Clone',
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        MAIN_UI: (BuildContext context) => MainUI(),
        SPLASH_SCREEN: (BuildContext context) => AnimatedSplashScreen(),


      },
      initialRoute: SPLASH_SCREEN,
    );
  }
}

//Future<String> getData() async {
//  var response = await http.get(
//      Uri.encodeFull("https://jsonplaceholder.typicode.com/posts"),
//      headers: {"Accept": "application/json"});
//  setState(() {
//    data = json.decode(response.body);
//  });
//  return "Success";

