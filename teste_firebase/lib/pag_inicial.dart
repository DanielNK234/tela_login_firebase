import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Inicial extends StatefulWidget {
  const Inicial({super.key});

  @override
  State<Inicial> createState() => _InicialState();
}

class _InicialState extends State<Inicial> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(228, 254, 254, 254),
        appBar: AppBar(
          leading: 
            IconButton(
            iconSize: 50,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
          IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
          ),
          ],
          centerTitle: true,
          title: const Text('Bruna Brecailo'),
          toolbarHeight: 90,
          backgroundColor: Color.fromARGB(191, 180, 55, 202),
          titleTextStyle: const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        body: 
          Column(
            children: [
              const SizedBox(height: 90),
                Image.network('https://grupomalwee.com.br/wp-content/themes/grupo-malwee-theme/static/images/brands/logo-grupo-malwee.png'),
              const SizedBox(height: 90),
              Center(
                child: ElevatedButton( 
                  onPressed: () {
                  },
                  style: 
                  ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.grey),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.00),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(const Size(300, 150))                
                  ), 
                  child: const Text('Estoque'),
                ),
              ),
              const SizedBox(height: 40,),
              Center(
                child: ElevatedButton( 
                  onPressed: () {
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.grey),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.00),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(const Size(300, 150))                
                  ), 
                  child: const Text('Emprestimo'),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }