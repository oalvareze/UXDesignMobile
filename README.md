# miso_ux

Proyecto Móvil para Miso-UX

## Getting Started

El proyecto está desarrollado en Flutter, basta con correrlo y usar algunos de los botones para navegar, sin embargo, esta es a lista de páginas y como se navega:

- main.dart     Inicialización y theming, invoca directamente a Inicio.dart
- Inicio.dart   Splashscreen con botones para iniciar sesión o registrarse, al dar clic en "Iniciar Sesión" lleva a Autenticacion.dart
- Autenticacion.dart   Pantalla de autenticación, al dar clic en "Siguiente" lleva al home
- Home.dart     Pantalla con la lista de alarmas y botones para agregar una alarma, los FABs navegan hacia Alarma.dart y CrearRecordatorio.dart
- CrearRecordatorio.dart   Pantalla para crear un nuevo recordatorio o alarma
- Alarma        Pantalla para apagar una alarma con un puzzle matemático