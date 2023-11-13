import 'package:flutter/material.dart';
class ListaTareasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Tareas'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TareaCard(
            nombre: 'SILOE AGUILAR',
            descripcion: 'Entrega Pendiente de Examen Programacion Movil',
            fecha: '12 de Noviembre 2023',
            imageUrl: 'https://concepto.de/wp-content/uploads/2018/09/lenguaje-de-programación-e1537466894547.jpg',
          ),
          SizedBox(height: 16.0),
          TareaCard(
            nombre: 'SILOE AGUILAR',
            descripcion: 'Primera parte de Informe de Proyecto Sistema de Gestion',
            fecha: '13 de noviembre',
            imageUrl: 'https://www.wimi-teamwork.com/static/medias/logiciels-gestion-des-taches-1280x640-1.png',
          ),
          TareaCard(
          nombre: 'SILOE AGUILAR', 
          descripcion: 'Caso 5 de Etica Informatica',
           fecha: '16 de Noviembre', 
           imageUrl:'https://worldcampus.saintleo.edu/img/article/ventajas-informatica-empresas.webp'),
           
          TareaCard(
          nombre: 'SILOE AGUILAR', 
          descripcion: 'INGLES 5, Realizar lecciones de English Discoveries',
           fecha: '20 de Noviembre', 
           imageUrl:'https://ienu.edu.mx/wp-content/uploads/2019/02/DEPARTAMENTO-DE-INGLES.png')
        ],
      ),
    );
  }
}

class TareaCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String fecha;
  final String imageUrl;

  const TareaCard({
    required this.nombre,
    required this.descripcion,
    required this.fecha,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  nombre,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.date_range, color: Colors.grey),
                    SizedBox(width: 4.0),
                    Text(
                      fecha,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    GestureDetector(
                      onTap: () {
                        // Agrega lógica para abrir el enlace
                      },
                      child: Icon(Icons.link, color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(
              descripcion,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                imageUrl,
                height: 120.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.star, color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'App CEUTEC',
    home: ListaTareasPage(),
  ));
}
