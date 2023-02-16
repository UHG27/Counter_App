import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int contador = 0;
    const TextStyle estiloTexto = TextStyle(
      fontSize: 30,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 198, 255),
        title: Text('Uriel Hernandez'),
      ),// AppBar
      backgroundColor:  const Color.fromARGB(255, 18, 186, 195),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Nuero de Taps', 
              style: TextStyle(fontSize: 30),
            ),
            Text(
              '$contador' ,
              style: estiloTexto
              ),
          ],
        )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 255, 229),
          foregroundColor: const Color.fromARGB(654, 65, 335, 21),
          onPressed: () {
            contador++;
            print('Presinaste el boton');
            print(contador);
          },
          child: const Icon(Icons.add),
        ));// Scaffold
   }
  }
