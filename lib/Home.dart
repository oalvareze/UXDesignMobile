import 'hexColor.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              AppBar(
                title: Center(child: Text(
                    "Inicio2",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
                leading: new IconButton(
                  icon: new Icon(Icons.menu),
                  onPressed: () {},
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // do something
                    },
                  )
                ],
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                backgroundColor: HexColor("E09765"),
              ),
              Center(
                child: Column(
                  children: [
                    Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.mobile_friendly),
                            title: Text("Mandar reporte de gastos", style: TextStyle(color: HexColor("5793e0")),),
                            subtitle: Text("8:00 AM"),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.schedule),
                            title: Text("Junta con ejecutivos", style: TextStyle(color: HexColor("5793e0")),),
                            subtitle: Text("9:00 AM"),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.schedule),
                            title: Text("Junta con el jefe", style: TextStyle(color: HexColor("5793e0")),),
                            subtitle: Text("10:00 AM"),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.mobile_friendly),
                            title: Text("Revisar estado del proyecto", style: TextStyle(color: HexColor("5793e0")),),
                            subtitle: Text("12:00 AM"),
                          )
                        ],
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: Icon(Icons.mobile_friendly),
                            title: Text("Agendar junta de mañana", style: TextStyle(color: HexColor("5793e0")),),
                            subtitle: Text("4:00 PM"),
                          )
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton.extended(onPressed: (){},
              label: Text("Alarma", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              icon: Icon(Icons.add),
              foregroundColor: Colors.white,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
            ),
            SizedBox(height: 10,),
            FloatingActionButton.extended(onPressed: (){},
              label: Text("Recordatorio", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              icon: Icon(Icons.add),
              foregroundColor: Colors.white,
              backgroundColor: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
              ),
            )
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
