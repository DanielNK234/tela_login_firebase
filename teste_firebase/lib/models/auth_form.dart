import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Auth with ChangeNotifier {

  static const _url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBd4lF6D6jqkpBZOwSVoFzXWMj5gvoPybc';

  Future <void> _authenticate  (
    String email, String passoword, String urlFragment) async {
      final url = 
        'https://identitytoolkit.googleapis.com/v1/accounts:$urlFragment?key=AIzaSyBd4lF6D6jqkpBZOwSVoFzXWMj5gvoPybc';
        final response = await http.post(
          Uri.parse(_url),
          body: jsonEncode({
            'email':email,
            'password':passoword,
            'returnSecureToken':true,
          })
        );

    }


  Future<void> Signup(String email, String password) async {

    _authenticate(email, password, 'signUp');
    }

    
  Future<void> login(String email, String password) async {

    _authenticate(email, password, 'signInWithPassword');
    }



  }
