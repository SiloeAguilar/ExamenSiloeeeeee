import 'package:flutter/material.dart';
import 'package:flutter_examenandreasiloe/noticias.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP CEUTEC',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/noticias': (context) => NoticiasPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App CEUTEC'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Andrea Siloe Aguilar'),
              accountEmail: Text('aguilarsiloe15@unitec.edu'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage
                ('https://img.freepik.com/vector-premium/icono-circulo-usuario-anonimo-ilustracion-vector-estilo-plano-sombra_520826-1931.jpg'), // Agrega la URL de la imagen.
              ),
            ),
            ListTile(
              title: Text('Noticias'),
              leading: Icon(Icons.newspaper),
              onTap: () {
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              title: Text('Cambio de monedas'),
              leading: Icon(Icons.currency_exchange),
              onTap: () {
                Navigator.pushNamed(context, '/cambioMoneda');
              },
            ),
            ListTile(
              title: Text('Lista de tareas'),
              leading: Icon(Icons.list),
              onTap: () {
                Navigator.pushNamed(context, '/listaTareas');
              },
            ),
            ListTile(
              title: Text('Podcast'),
              leading: Icon(Icons.headset),
              onTap: () {
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
    );
  }
}
