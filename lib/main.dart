import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titulo Novo', // título do aplicativo - display no celular
      theme: ThemeData(
        primarySwatch: Colors.purple, // linha de seleção de cor
      ),
      home: const MyHomePage(title: 'Pagina Inicial'), // título da pagina - principal widget 
    );
  }
}

class MyHomePage extends StatefulWidget { // construtor da classe - armazenamento de dados mutáveis  
  const MyHomePage({super.key, required this.title});

  final String title; // título final recebido pelo valor passado pelo construtor da linha 23

  @override // anotação  ou algo está sendo sobrescrito 
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // linha que recebe um inteiro que se inicia em 0

  void _incrementCounter() {
    // responsável por contar o numero de vezes do click
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // widget que representa uma página
      appBar: AppBar( // componete superior ou inferior da página do aplicativo - contém barra de ferramentas  
        title: Text(widget.title),
      ),
      body: Center( // corpo do texto do aplicativo abaixo do appBar
        child: Column( // child usado apenas com um widget
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ // children deve ser utilizado como uma lista de widgets
            const Text(
              'Voce apertou o botão:', // informação ao usuario de numero de vezes que apertou o botão
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // função executada quando o usuário clica no botão
        tooltip: 'Aperte aqui', // informação ao usúario para apertar o botão ou poderá ser falado para o usuário 
        child: const Icon(Icons.add), // icone para ser clicado pelo usuario
      ), 
    );
  }
}
