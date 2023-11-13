import 'package:flutter/material.dart';
class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de noticias'),
        backgroundColor: Colors.blue, // Example color
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          NoticiaCard(
            titulo: 'Eventos Jaguar',
            fecha: '16 de Noviembre del 2023',
            contenido:
                'Te invitamos a formar parte de las Votaciones Estudiantes en Ceutec, Sede central para elegir los mejores estudiantes y profesionales que trabajen en la empresa Jaguar',
            imagenUrl:
                'https://www.argentina.gob.ar/sites/default/files/49_votaciones_vinieta_0.png', // Reemplaza con tu URL de imagen
          ),
          // Add three more NoticiaCard widgets
          NoticiaCard(
            titulo: 'Show and Tell',
            fecha: '17 de DICIEMBRE',
            contenido: 'Ven y conoce los proyectos destacados de Ingenieria en Informatica, Ceutec Sede Central.',
            imagenUrl: 'https://scontent.fsap1-2.fna.fbcdn.net/v/t1.6435-9/105998831_148378480179867_7583412199481607233_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=dd63ad&_nc_ohc=_KLXBk3FeHsAX9juR_b&_nc_ht=scontent.fsap1-2.fna&oh=00_AfBnS0rtW7rwBi-remv2knE0RBj-x9hbgzVggrzsmA6OUQ&oe=6578B722',
          ),
          NoticiaCard(
            titulo: 'Matricula Abierta 2024',
            fecha: '10 de Enero',
            contenido: 'Forma parte de nuestra Universidad! CEUTEC',
            imagenUrl: 'https://www.se.gob.hn/media/image/depa/img/articulos/274754160_5257013927654661_1635288311222696126_n.png',
          ),
          NoticiaCard(
            titulo: 'Descubre las Diversas carreras en Ceutec',
            fecha: '11 de Enero 2024',
            contenido: 'Ven y conoce nuestras ofertas academicas y descuentos.',
            imagenUrl: 'https://www.yoestudio.cl/wp-content/uploads/2022/09/diplomado-y-un-magister.jpg',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;
  final String? imagenUrl; // Nueva propiedad para la URL de la imagen

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
    this.imagenUrl, // Parámetro opcional para la URL de la imagen
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imagenUrl != null)
              Image.network(
                imagenUrl!,
                height: 150.0,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            SizedBox(height: 8.0),
            Text(
              titulo,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              fecha,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
              ),
            ),
            Divider(color: Colors.grey), // Divider for visual separation
            SizedBox(height: 8.0),
            Text(
              contenido,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
