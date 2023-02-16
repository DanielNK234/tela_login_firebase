 // ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:teste_firebase/login_page.dart';
import 'package:teste_firebase/pag_inicial.dart';
void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  print(1);
  await Firebase.initializeApp();
  print(2);
  runApp(const LoginPage());

}

class MyApp extends StatefulWidget {
  const MyApp ({Key? key }):super(key: key);

    Widget build(BuildContext context){
        return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      );
    }
    
      @override
      // ignore: no_logic_in_create_state
      State<StatefulWidget> createState() {
      throw UnimplementedError();
      }     

}