 import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStatefulWidget()
  ));
}

class HomeStatefulWidget extends StatefulWidget {
  const HomeStatefulWidget({Key? key}) : super(key: key);

  @override
  State<HomeStatefulWidget> createState() => _HomeStatefulWidgetState();
}

class _HomeStatefulWidgetState extends State<HomeStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget> [
            Image.asset("images/logo.png"),
            const Text(
                "Clique abaixo para gerar uma frase!",
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
             ElevatedButton(
                onPressed: (){
                  print("Clicou");
                },
                child: const Text("Nova Frase"),
               style: ButtonStyle(
                 backgroundColor: MaterialStateProperty.all(Colors.green)
               ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(),
    );
  }
}
