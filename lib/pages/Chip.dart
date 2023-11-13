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
                  backgroundColor: Colors.blue,
                  child: Text('', style: TextStyle(color: Colors.white)),
                ),
                label: Text(
                  'Galeria imagenes',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.grey[200],
                labelStyle: TextStyle(color: Colors.black),
                elevation: 4,
                shadowColor: Colors.grey[60],
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
