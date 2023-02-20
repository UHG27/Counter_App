import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

@override
State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen>{
int contador = 0;

void incrementar(){
  contador++;
  setState(() {});
}

void decrementar(){
  contador--;
  setState(() {});
}

void reiniciar(){
  contador = 0;
  setState(() {});
}

  @override
  Widget build(BuildContext context) {
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
        floatingActionButton: CoustomFloatingActionButton(decrease: decrementar, increase: incrementar, reset: reiniciar,));// Scaffold
   }
  }

class CoustomFloatingActionButton extends StatelessWidget {
  final Function increase;
  final Function decrease;
  final Function reset;
  
  const CoustomFloatingActionButton({
    Key? key, required this.increase, required this.decrease, required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 255, 229),
          foregroundColor: const Color.fromARGB(654, 65, 335, 21),
          onPressed: () => decrease(),
         
          child: const Icon(Icons.exposure_minus_1),
        ),
        
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 255, 229),
          foregroundColor: const Color.fromARGB(654, 65, 335, 21),
          onPressed: () => reset(),
          child: const Icon(Icons.restart_alt),
        ),
       
        FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 0, 255, 229),
          foregroundColor: const Color.fromARGB(654, 65, 335, 21),
          onPressed: () => increase(),
          child: const Icon(Icons.exposure_plus_1),
        ),
      ],
    );
  }
}
