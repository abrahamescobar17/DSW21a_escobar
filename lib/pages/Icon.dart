import 'package:flutter/material.dart';

class IconPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(''),
            SizedBox(height: 20),
            // Agrega un icono con buen diseño
            Icon(
              Icons.star,  // Puedes cambiar el icono según tus preferencias
              size: 50,    // Puedes ajustar el tamaño del icono según tus necesidades
              color: Colors.orange,  // Puedes ajustar el color del icono según tus necesidades
            ),
          ],
        ),
      ),
    );
  }
}
