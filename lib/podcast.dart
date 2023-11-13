import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: 'Podcast App',
    home: PodcastApp(),
  ));
}
class PodcastApp extends StatelessWidget {
  const PodcastApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podcasts'),
        centerTitle: true, // Centrar el título en la barra de la aplicación
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PodcastCard(
              artista: 'Morat',
              musica: 'A donde Vamos',
              imagenUrl:
                  'https://i.scdn.co/image/ab67616d0000b27302bf1057986d3d64dec7e66a',
            ),
            const SizedBox(height: 24.0),
            AudioControls(),
            const SizedBox(height: 24.0),
            AudioProgressBar(),
            const SizedBox(height: 24.0),
            AudioOptions(),
          ],
        ),
      ),
    );
  }
}

class PodcastCard extends StatelessWidget {
  final String artista;
  final String musica;
  final String imagenUrl;

  const PodcastCard({
    required this.artista,
    required this.musica,
    required this.imagenUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 4.0,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 40.0,
              backgroundImage: NetworkImage(imagenUrl),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  artista,
                  style: TextStyle(fontSize: 18.0),
                ),
                Text(
                  musica,
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AudioControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.skip_previous),
            onPressed: () {},
            iconSize: 36.0,
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {},
            iconSize: 72.0,
          ),
          IconButton(
            icon: const Icon(Icons.fast_forward),
            onPressed: () {},
            iconSize: 36.0,
          ),
        ],
      ),
    );
  }
}

class AudioProgressBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: 0.5,
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        const SizedBox(height: 12.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('1:45', style: TextStyle(fontSize: 14.0)),
            Text('3:45', style: TextStyle(fontSize: 14.0)),
          ],
        ),
      ],
    );
  }
}

class AudioOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  const SizedBox(width: 8.0),
                  Text('Repeat', style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Spacer(),
            ],
          ),
          const SizedBox(height: 8.0),
          Divider(thickness: 2.0, color: Colors.grey),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  const SizedBox(width: 8.0),
                  Text('Shuffle', style: TextStyle(fontSize: 16.0)),
                ],
              ),
              Spacer(),
            ],
          ),
          const SizedBox(height: 8.0),
          Divider(thickness: 2.0, color: Colors.grey),
        ],
      ),
    );
  }
}
