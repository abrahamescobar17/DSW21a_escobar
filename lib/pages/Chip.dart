import 'package:dsw21a_escobar/pages/images.dart';
import 'package:flutter/material.dart';


class ChipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            // Agrega un chip con buen diseño
            InkWell(
              onTap: () {
                // Navegar a la página de imágenes
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagesPage()),
                );
              },
              child: Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey.shade800,
                  child: Text('A'), // Puedes personalizar el contenido del avatar
                ),
                label: Text('Nombre claro'),
                backgroundColor: Colors.blue,
                labelStyle: TextStyle(color: Colors.white),
                elevation: 4, // Añade sombra al chip
                shadowColor: Colors.grey[60], // Color de la sombra
                padding: EdgeInsets.all(8), // Añade espacio interno al chip
              ),
            ),
          ],
        ),
      ),
    );
  }
}
