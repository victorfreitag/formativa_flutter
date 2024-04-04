
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(title: '',),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key, required this.title});


  final String title;

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textInfo = "Informe seus dados";
  static const IconData password = IconData(0xe47a, fontFamily: 'MaterialIcons');

  void _limpar(){
    setState(() {
      usuarioController.text = "";
      senhaController.text = "";
      _textInfo = "Informe seus dados";
    });

  }


  void _cadastro(){
    setState(() {
      usuarioController.text = "";
      senhaController.text = "";
      _textInfo = "Seu cadastro foi realizado";



});}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


          title: Text("Login"),
          centerTitle: true,
          backgroundColor: Colors.yellowAccent,
          actions: <Widget>[
            IconButton(onPressed: _limpar, icon: Icon(Icons.refresh))
          ]

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 20, 10),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(

                Icons.person_pin, size: 100.0, color: Colors.yellowAccent),

            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Informe seu Usuario",
                  labelStyle: TextStyle(color: Colors.black45)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Informe sua senha:",
                  labelStyle: TextStyle(color: Colors.black45)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0,),
              controller: senhaController,
            ),
            Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: SizedBox(
                  height: 50.0,
                  child: ElevatedButton(
                      onPressed: _cadastro,
                      child: const Text("Cadastrar"),


                  ),
                )
            ),
            Text(
              _textInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 25.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}
