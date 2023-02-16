import 'package:flutter/material.dart';
import 'package:teste_firebase/pag_inicial.dart';

enum AuthMode {Login, Signup}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

    final _passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    bool _isLoading = false;
  AuthMode _authMode = AuthMode.Login;

  Map <String, String> _authData = {
    'email':'',
    'passoword':'',
  };

  String email = 'email';
  String password = 'password';

  bool _isLogin()=>_authMode ==AuthMode.Login;    
  bool _isSignup()=>_authMode ==AuthMode.Signup;

  void SwitchAuthMode(){
    setState(() {
      if(_isLogin()){
        _authMode = AuthMode.Signup;
      } else{
        _authMode = AuthMode.Login;
      }
    });
  }


  void _submit(){
    setState(() => _isLoading = true);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
       Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          toolbarHeight: 70,
          ),
        body: SizedBox(
          width: double.infinity,
          height: 700,
          child:Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Image.network('https://grupomalwee.com.br/wp-content/themes/grupo-malwee-theme/static/images/brands/logo-grupo-malwee.png'),
              const SizedBox(height:100),
              TextFormField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  ),
                  onSaved: (email)=> _authData['email'] = email ?? '',
                ), 
                const SizedBox(height:30),
              TextFormField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: const InputDecoration(
                 labelText: 'Password',
                  border: OutlineInputBorder(),
                  ),
                controller: _passwordController,
                onSaved: (password)=> _authData['password'] = password ?? '',

                ), 
                const SizedBox(height:30),
                Builder(
                  builder: (context) {
                    return ElevatedButton(
                      style: 
                      ButtonStyle(
                        shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0),),),
                        minimumSize: MaterialStateProperty.all(const Size(100,50))
                        ),
                      onPressed: _submit,
                      // () {
                      //   // Navigator.push(
                      //   // context,
                      //   // MaterialPageRoute(builder: (context) => const Inicial()),
                      //   // ); 
                      // }, 
                      child: const Text('Entrar')
                    );
                  }
                ),
              ],
            ),
          ), 
        ),
      ),
    );
  }
}