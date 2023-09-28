import 'package:flutter/material.dart';
import 'Autenticacion.dart';

class InicioPage extends StatefulWidget {
  const InicioPage({super.key, required this.title});
  final String title;
  @override
  State<InicioPage> createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {
  void _incrementCounter() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/inicio.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AutenticacionPage()),
              );
            }, child: Text('Iniciar Sesión', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
            SizedBox(height: 40),
            ElevatedButton(onPressed: (){
            }, child: Text('Crear Cuenta', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
          ],
        ),
    ),
      ),
    );
  }
}