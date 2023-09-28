import 'package:flutter/material.dart';

import 'Home.dart';


class AutenticacionPage extends StatelessWidget {
  const AutenticacionPage({super.key});

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
              SizedBox(width: 300,
              child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Usuarios",
                  )
              ),
              ),
              SizedBox(height: 40),
              SizedBox(width: 300,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
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
                  child: Text('Siguiente', style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold))),
            ],
          ),
        ),
      ),
    );
  }
}
