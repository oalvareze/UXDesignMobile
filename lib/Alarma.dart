import 'package:flutter/material.dart';

import 'Home.dart';


class AlarmaPage extends StatelessWidget {
  const AlarmaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/Fondo.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 40),
              Text("Reunión con el jefe", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onPrimary)),
              SizedBox(height: 40),
              SizedBox(width: 300,
              child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Resultado",
                  )
              ),
              ),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
                  child: Text('Cancelar', style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold))),
              SizedBox(height: 40),
              ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
                  child: Text('Posponer', style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
