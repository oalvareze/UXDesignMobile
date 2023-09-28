import 'hexColor.dart';
import 'package:flutter/material.dart';


class CrearRecordatorioPage extends StatelessWidget {
  const CrearRecordatorioPage({super.key});

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
                title: Text(
                    "Crear Recordatorio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: new IconButton(
                  icon: new Icon(Icons.navigate_before),
                  onPressed: () {},
                ),
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                backgroundColor: HexColor("E09765"),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    SizedBox(width: 300,
                      child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Nombre",
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(width: 300,
                      child: Row(children:[
                        Text("Etiqueta", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
                      ]),
                    ),
                    SizedBox(height: 10,),
                    ToggleButtons(
                      isSelected: [true, false, false],
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      borderColor: Theme.of(context).colorScheme.onPrimary,
                      selectedBorderColor: Theme.of(context).colorScheme.onPrimary,
                      fillColor: Colors.red[200],
                      borderWidth: 3,
                      children:[
                        Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Trabajo", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                        ),
                        Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Reuniones", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                        ),
                        Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text("Entregas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    SizedBox(width: 300,
                      child: Row(children:[
                        Text("Hora", style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary)),
                      ]),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: 300,
                      child:
                      Row(
                        children: [
                          SizedBox(width: 90,
                            child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "",
                                    contentPadding: EdgeInsets.symmetric(vertical: 40)
                                )
                            ),
                          ),
                          SizedBox(width: 30,
                            child: Center(child: Text(":", style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.bold)),
                          ),
                          ),
                          SizedBox(width: 90,
                            child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "",
                                  contentPadding: EdgeInsets.symmetric(vertical: 40),
                                )
                            ),
                          ),
                          SizedBox(width: 30),
                          ToggleButtons(
                              isSelected: [true, false],
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                              borderColor: Theme.of(context).colorScheme.onPrimary,
                              selectedBorderColor: Theme.of(context).colorScheme.onPrimary,
                              fillColor: Colors.red[200],

                              borderWidth: 1,
                              direction: Axis.vertical,

                              children: [
                                Text("AM", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                                Text("PM", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                              ],
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(width: 300,
                      child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Fecha",
                          )
                      ),
                    ),
                    SizedBox(width: 300,
                        child: Row(children:[
                          Text("MM/DD/YYYY", style: TextStyle(fontSize: 12, color: Theme.of(context).colorScheme.onPrimary)),
                        ]),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(width: 300,
                      child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Descripcion",
                            suffixIcon: Icon(Icons.calendar_today),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                    }, child: Text('Siguiente', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
